#include <stdio.h>
#include <stdlib.h>

#define NUM_OF_FRAMES 100
#define NUM_OF_COLS 64
#define NUM_OF_ROWS 64
#define NUM_OF_ROWGROUPS 8
#define NUM_OF_ROWS_IN_GROUP (NUM_OF_ROWS/NUM_OF_ROWGROUPS)

void main()
{
	FILE * matrixFromMatlabFile;
	FILE * coeFile;
	unsigned char wave[NUM_OF_FRAMES][NUM_OF_ROWS][NUM_OF_COLS];
	unsigned long long compressedWave[NUM_OF_FRAMES][NUM_OF_ROWGROUPS][NUM_OF_COLS] = { 0 };
	unsigned int frameNum, row, col, rowGroup;
	char delimeter = '-';
	unsigned int valueFromFile;
	int numOfFsacnfedItems = 0;

	matrixFromMatlabFile = fopen("symetricWave.dat", "r");
	coeFile = fopen("symetricWaveForRom8pxlRow.coe", "w");

	if (matrixFromMatlabFile == NULL || coeFile == NULL)
	{
		printf("Unable to open file\n");
		exit(1);
	}

	frameNum = 0;
	row = 0;
	col = 0;
	// read
	
	while (delimeter != EOF && numOfFsacnfedItems != EOF)
	{
		numOfFsacnfedItems = fscanf(matrixFromMatlabFile, "%u", &valueFromFile);
		if (numOfFsacnfedItems != EOF)
		{
			if (frameNum < NUM_OF_FRAMES && row < NUM_OF_ROWS && col < NUM_OF_COLS)
			{
				wave[frameNum][row][col] = (unsigned char)valueFromFile;
			}
			else
			{
				printf("Index out of range while read.\n");
				exit(1);
			}
			
			delimeter = fgetc(matrixFromMatlabFile);
			switch (delimeter)
			{
			case ',': 
				col++;
				if (col == NUM_OF_COLS)
				{
					col = 0;
					row++;
				}
				break;
			case '\n':
				frameNum++;
				col = 0;
				row = 0;
				break;
			case EOF:
				break;
			default:
				printf("Something is wrong...\n");
				exit(1);
			}
			if (
				row >= NUM_OF_ROWS || 
				col >= NUM_OF_COLS || 
				frameNum > NUM_OF_FRAMES )// frameNum == NUM_OF_FRAMES is ok because of empty line in MATLAB output file 
			{
				printf("Index out of range.\n");
			}		
		}
	}
	if (row != 0 || col != 0 || frameNum != NUM_OF_FRAMES)
	{			
		// Because of format of the file saved by Matlab, it end with an empty line. We already counted this empty line in previous cycle of the loop, but it is not 
		// an actual frame.
		printf("Unexpected number of rows/cols/frames.\n");
		exit(1);
	}
	

	// write	
	fprintf(coeFile, "; v3.0 or later.\n");
	fprintf(coeFile, ";\n");
	fprintf(coeFile, "; This.COE file specifies initialization values for a block\n");
	fprintf(coeFile, "; memory of depth = 51200, and width = 64. In this case, values are\n");
	fprintf(coeFile, "; specified in hexadecimal format.\n");
	fprintf(coeFile, "memory_initialization_radix = 16;\n");
	fprintf(coeFile, "memory_initialization_vector =\n");

	for (frameNum = 0; frameNum < NUM_OF_FRAMES; frameNum++)
	{
		for (rowGroup = 0; rowGroup < NUM_OF_ROWGROUPS; rowGroup++)
		{
			for (col = 0; col < NUM_OF_COLS; col++)
			{
				compressedWave[frameNum][rowGroup][col] = 0;
				for (row = rowGroup * NUM_OF_ROWGROUPS; row < rowGroup * NUM_OF_ROWGROUPS + NUM_OF_ROWS_IN_GROUP; row++)
				{
					if (frameNum < NUM_OF_FRAMES && rowGroup < NUM_OF_ROWGROUPS && row < NUM_OF_ROWS && col < NUM_OF_COLS)
					{
						compressedWave[frameNum][rowGroup][col] = (compressedWave[frameNum][rowGroup][col] << 8) + wave[frameNum][row][col];
					}
					else
					{
						printf("One of the indexes is out of range.\n");
						exit(1);
					}
					
				}
				if (!(frameNum == 0 && rowGroup == 0 && col == 0))
				{
					fprintf(coeFile, ",\n");
				}
				fprintf(coeFile, "%016llX", compressedWave[frameNum][rowGroup][col]);
			}
		}
	}
	fprintf(coeFile, ";");
	
	fclose(matrixFromMatlabFile);
	fclose(coeFile);
}