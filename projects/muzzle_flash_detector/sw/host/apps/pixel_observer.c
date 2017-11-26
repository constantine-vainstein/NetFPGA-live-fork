/* Simple Raw Sniffer                                                    */
/* Author: Luis Martin Garcia. luis.martingarcia [.at.] gmail [d0t] com  */
/* To compile: gcc simplesniffer.c -o simplesniffer -lpcap               */
/* Run as root!                                                          */
/*                                                                       */
/* This code is distributed under the GPL License. For more info check:  */
/* http://www.gnu.org/copyleft/gpl.html                                  */

#include <pcap.h>
#include <string.h>
#include <stdlib.h>

#define MAXBYTES2CAPTURE 2048
#define FRAMES_TO_CAPTURE_BY_DEFAULT 10
#define DEFAULT_ROW 0
#define DEFAULT_COL 0

#define MIN_ROW 0
#define MAX_ROW 7
#define MIN_COL 0
#define MAX_COL 63

#define COL_SIZE 64
#define ROW_SIZE 64

#define ETHERNET_FRMS_PER_CAMERA_FRM 65
#define PIXEL_BLOCK_PACKET_LEN 81

#define ETHER_ADDR_LEN_BYTES 6

#define PIXEL_BLOCK_HEIGHT 8
#define PIXEL_BLOCK_WIDTH 8
#define LAST_BLOCK_ID (PIXEL_BLOCK_HEIGHT * PIXEL_BLOCK_WIDTH - 1)

#define FRAME_START_PREAMABLE 0xcccccccc

typedef struct InputArgs
{
	char * device;
	unsigned int rowToCapture;
	unsigned int colToCapture;
	unsigned int framesToCapture;
} InputArgs;

typedef struct Frame
{
	unsigned int frameId;
	unsigned char pixels[ROW_SIZE][COL_SIZE];
} Frame;

typedef enum ObserverState
{
	WAITING_FOR_FIRST_FRAME,
	MONITORING_FRAMES
} ObserverState;

typedef struct PixelObserver
{
	InputArgs args;
	Frame * monitoredFrames;
	unsigned int frameCount;
	unsigned int blockCount;
	ObserverState state;
} PixelObserver;

typedef struct EthHeader
{
	u_char da[ETHER_ADDR_LEN_BYTES];
	u_char sa[ETHER_ADDR_LEN_BYTES];
	u_short etherType;
} EthHeader /*__attribute__((packed))*/;

typedef struct FrameIdMessage
{
	EthHeader ethHeader;
	u_short spare;
	u_int preamable;
	u_int frameId;
} FrameIdMessage /*__attribute__((packed))*/;

typedef struct PixelBlockMessage
{
	EthHeader ethHeader;
	u_short spare;
	u_char blockId;
	u_char pixels[PIXEL_BLOCK_WIDTH][PIXEL_BLOCK_HEIGHT];
} PixelBlockMessage /*__attribute__((packed))*/;


static const PixelObserver initObsever = {
		{
				NULL,
				DEFAULT_ROW,
				DEFAULT_COL,
				FRAMES_TO_CAPTURE_BY_DEFAULT
		},
		NULL,
		0,
		0,
		WAITING_FOR_FIRST_FRAME
};



/* processPacket(): Callback function called by pcap_loop() everytime a packet */
/* arrives to the network card. This function prints the captured raw data in  */
/* hexadecimal.                                                                */
void processPacket(u_char *arg, const struct pcap_pkthdr* pkthdr, const u_char * packet){

	PixelObserver *observer = (PixelObserver *)arg;
	const FrameIdMessage * frmIdMsg = (FrameIdMessage *)packet;
	const PixelBlockMessage * pxlBlkMsg = (PixelBlockMessage *)packet;
	u_int col;
	u_int row;
	u_int col_offset;
	u_int row_offset;

	if(observer->frameCount < observer->args.framesToCapture)
	{
		switch (observer->state)
		{
		case WAITING_FOR_FIRST_FRAME:
			if(frmIdMsg->preamable == FRAME_START_PREAMABLE)
			{
				observer->state = MONITORING_FRAMES;
				observer->monitoredFrames[observer->frameCount].frameId = frmIdMsg->frameId;
				observer->blockCount = 0;
			}
			else
			{
				/* do nothing, remain in the same state */
			}
			break;

		case MONITORING_FRAMES:

			row_offset = (pxlBlkMsg->blockId / 8) * 8;
			col_offset = (pxlBlkMsg->blockId % 8) * 8;
			for(row = 0; row < PIXEL_BLOCK_HEIGHT; row++)
			{
				for(col = 0; col < PIXEL_BLOCK_WIDTH; col++)
				{
					observer->monitoredFrames[observer->frameCount].pixels[row_offset + row][col_offset + col] =
							pxlBlkMsg->pixels[col][row];
				}
			}
			if(pxlBlkMsg->blockId == LAST_BLOCK_ID)
			{
				observer->state = WAITING_FOR_FIRST_FRAME;
				observer->frameCount++;
			}

			break;
		}
	}

 return;
}

/* Fill input arguments by data from command line or default data */
void fillArgs(int argc, char *argv[], char * errbuf, InputArgs * inputArgs)
{

	/* Fill device */
	 if( argc > 1){  /* If user supplied interface name, use it. */
		 inputArgs->device = argv[1];
	 }
	 else{  /* Get the name of the first device suitable for capture */

	    if ( (inputArgs->device = pcap_lookupdev(errbuf)) == NULL){
	        fprintf(stderr, "ERROR: %s\n", errbuf);
	        exit(1);
	    }
	 }

	 /* Fill row to capture */
	 if (argc > 2)
	 {
		 int enteredRow = atoi(argv[2]);
		 if ((enteredRow >= MIN_ROW) && (enteredRow <= MAX_ROW))
		 {
			 inputArgs->rowToCapture = (unsigned int)enteredRow;
		 }
		 else
		 {
			 inputArgs->rowToCapture = DEFAULT_ROW;
		 }
	 }
	 else
	 {
		 inputArgs->rowToCapture = DEFAULT_ROW;
	 }

	 /* Fill column to capture */
	 if (argc > 3)
	 {
		 int enteredCol = atoi(argv[3]);
		 if ((enteredCol >= MIN_COL) && (enteredCol <= MAX_COL))
		 {
			 inputArgs->colToCapture = (unsigned int)enteredCol;
		 }
		 else
		 {
			 inputArgs->colToCapture = DEFAULT_COL;
		 }
	 }
	 else
	 {
		 inputArgs->colToCapture = DEFAULT_COL;
	 }

	 /* Fill number of frames to capture */
	 if (argc > 4)
	 {
		 int enteredFramesToCap = atoi(argv[4]);
		 if (enteredFramesToCap >= 0)
		 {
			 inputArgs->framesToCapture = (unsigned int)enteredFramesToCap;
		 }
		 else
		 {
			 inputArgs->framesToCapture = FRAMES_TO_CAPTURE_BY_DEFAULT;
		 }
	 }
	 else
	 {
		 inputArgs->framesToCapture = FRAMES_TO_CAPTURE_BY_DEFAULT;
	 }

}

void printDesiredAddresOverTime(PixelObserver * me)
{
	u_int frameCount = 0;
	u_int pixelNum = 0;

	printf("\t  Frm Id\tPixel 0\tPixel 1\tPixel 2\tPixel 3\tPixel 4\tPixel 5\tPixel 6\tPixel 7\n");
	printf("---------------------------------------------------------------------------------------\n");
	for(frameCount = 0; frameCount < me->args.framesToCapture ; frameCount++)
	{
		printf("Frm #%2d\t",frameCount);
		printf("%8X\t",me->monitoredFrames[frameCount].frameId);
		for(pixelNum = 0; pixelNum < PIXEL_BLOCK_HEIGHT; pixelNum++)
		{
			printf("%4d\t",me->monitoredFrames[frameCount].pixels[me->args.rowToCapture * 8 + pixelNum][me->args.colToCapture]);
		}
		printf("\n");
	}
}

void saveMonitoredData(PixelObserver * me)
{
	u_int frm;
	u_int row;
	u_int col;

	FILE * f;
	f = fopen("monitoredData.dat", "w");

	for(frm = 0; frm < me->args.framesToCapture; frm++)
	{
		for(row = 0; row < ROW_SIZE; row++)
		{
			for(col = 0; col < COL_SIZE; col++)
			{
				fprintf(f, "%d", me->monitoredFrames[frm].pixels[row][col]);
				if(col < COL_SIZE - 1)
				{
					fprintf(f, ",");
				}
			}
			if(row < ROW_SIZE - 1)
			{
				fprintf(f, ",");
			}
		}
		if(frm < me->args.framesToCapture - 1)
		{
			fprintf(f, "\n");
		}
	}
	fclose(f);
}



/* main(): Main function. Opens network interface and calls pcap_loop() */
int main(int argc, char *argv[] ){

 pcap_t *descr = NULL;
 char errbuf[PCAP_ERRBUF_SIZE];
 PixelObserver pxlObserver = initObsever;
 int pcapLoopReturn;

 memset(errbuf,0,PCAP_ERRBUF_SIZE);


 fillArgs(argc, argv, errbuf, &(pxlObserver.args));
 /* allocate space for frames */
 pxlObserver.monitoredFrames = (Frame *)malloc(pxlObserver.args.framesToCapture * sizeof(Frame));


 printf("Opening device %s\n", pxlObserver.args.device);

 /* Open device in promiscuous mode */
 if ( (descr = pcap_open_live(pxlObserver.args.device, MAXBYTES2CAPTURE, 1,  512, errbuf)) == NULL){
    fprintf(stderr, "ERROR: %s\n", errbuf);
    exit(1);
 }

 /* Loop & call processPacket() for every received packet*/
 pcapLoopReturn = pcap_loop(
		 	 	 	 	 	 descr,
		 	 	 	 	 	 (int)((pxlObserver.args.framesToCapture + 1) * ETHERNET_FRMS_PER_CAMERA_FRM),
		 	 	 	 	 	 /* framesToCapture + 1 because may be we are in the middle of a frame */
		 	 	 	 	 	 processPacket,
		 	 	 	 	 	 (u_char *)&pxlObserver);
 if (pcapLoopReturn == -1){
    fprintf(stderr, "ERROR: %s\n", pcap_geterr(descr) );
    exit(1);
 }

 printDesiredAddresOverTime(&pxlObserver);
 saveMonitoredData(&pxlObserver);
free(pxlObserver.monitoredFrames);

return 0;

}

/* EOF*/
