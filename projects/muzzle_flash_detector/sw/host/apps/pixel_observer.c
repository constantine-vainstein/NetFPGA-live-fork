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

#define ETHERNET_FRMS_PER_CAMERA_FRM 65

typedef struct InputArgs
{
	char * device;
	unsigned int rowToCapture;
	unsigned int colToCapture;
	unsigned int framesToCapture;
} InputArgs;




/* processPacket(): Callback function called by pcap_loop() everytime a packet */
/* arrives to the network card. This function prints the captured raw data in  */
/* hexadecimal.                                                                */
void processPacket(u_char *arg, const struct pcap_pkthdr* pkthdr, const u_char * packet){

 int i=0, *counter = (int *)arg;

 printf("Packet Count: %d\n", ++(*counter));
 printf("Received Packet Size:inputArgs %d\n", pkthdr->len);
 printf("Payload:\n");
 for (i=0; i<pkthdr->len; i++){

    if ( isprint(packet[i]) ) /* If it is a printable character, print it */
        printf("%c ", packet[i]);
    else
        printf(". ");

     if( (i%16 == 0 && i!=0) || i==pkthdr->len-1 )
        printf("\n");
  }
 return;
}

/* Fill input arguments by data from command line or default data */
void fillArgs(int argc, const char *argv[], char * errbuf, InputArgs * inputArgs)
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



/* main(): Main function. Opens network interface and calls pcap_loop() */
int main(int argc, char *argv[] ){

 int i=0, count=0;
 pcap_t *descr = NULL;
 char errbuf[PCAP_ERRBUF_SIZE], *device=NULL;
 InputArgs inputArgs;
 int pcapLoopReturn;

 memset(errbuf,0,PCAP_ERRBUF_SIZE);


 fillArgs(argc, argv, errbuf, &inputArgs);


 printf("Opening device %s\n", inputArgs.device);

 /* Open device in promiscuous mode */
 if ( (descr = pcap_open_live(inputArgs.device, MAXBYTES2CAPTURE, 1,  512, errbuf)) == NULL){
    fprintf(stderr, "ERROR: %s\n", errbuf);
    exit(1);
 }

 /* Loop & call processPacket() for every received packet*/
 pcapLoopReturn = pcap_loop(
		 	 	 	 	 	 descr,
		 	 	 	 	 	 (int)((inputArgs.framesToCapture + 1) * ETHERNET_FRMS_PER_CAMERA_FRM),
		 	 	 	 	 	 /* framesToCapture + 1 because may be we are in the middle of a frame */
		 	 	 	 	 	 processPacket,
		 	 	 	 	 	 (u_char *)&inputArgs);
 if (pcapLoopReturn == -1){
    fprintf(stderr, "ERROR: %s\n", pcap_geterr(descr) );
    exit(1);
 }

return 0;

}

/* EOF*/
