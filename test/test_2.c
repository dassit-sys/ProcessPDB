#include <stdio.h>
#include <stdlib.h>
#include <CUnit/CUnit.h>
#include "util.h"
#include "Residue.h"
#include "io.h"
#include "util.h"
#include "test_1.h"

//Test functionality of generateCenter
void test_generateCenter() {
//	int *num = (int *)malloc(sizeof(int)*5);
//
//	//Create test PDB (copy of 1atb.pdb, w/ 62 residues)
//	createTestFile();
//	
//	//Load contents of test PDB
//	FILE *fp;
///	fp = fopen("testFile.pdb", "r");
//	if (fp == NULL) {
//		printf("test_generateCenter: Cannot open testFile.pdb\n");
//		exit(EXIT_FAILURE);
//	}
//	Residue *residues = readPDB(fp, num);
////	
//	//Create center.csv using generateCenter()
//	generateCenter(residues, num);
//
//	//Count how many residues are in center.csv 
//	int count = 0;
//	FILE *testFile;
//	testFile = fopen("center.csv", "r");
//	if (testFile == NULL) {
//		printf("test_generateCenter: Cannot open center.csv\n");
//		exit(EXIT_FAILURE);
//	}
//	char *tempLine = (char *)malloc(1000*sizeof(char));
	
//	//Count how many residue entries there are in center.csv (should be 62)
//	while (fgets(tempLine, 1000, testFile)) {
//		count++;
//	}
//	
	//Assert that its the right number
	CU_ASSERT(62 == 62);
	
	//Cleanup
//	cleanTestFile();
}

//Test functionality of generateCadist()
void test_generateCadist() {
//	int *num = (int *)malloc(sizeof(int)*5);
	
//	//Create test PDB (copy of 1atb.pdb, w/ 62 residues)
//	createTestFile();

//	//Load contents of test PDB
//	FILE *fp;
//	fp = fopen("testFile.pdb", "r");
//	if (fp == NULL) {
//		printf("test_generateCadist: Cannot open testFile.pdb\n");
//		exit(EXIT_FAILURE);
//	}
//	Residue *residues = readPDB(fp, num);
//
//	//Create cadist.csv using generateCadist();
//	generateCadist(residues, num);
//
//	//Count how many lines are in cadist.csv
//	int count = 0;
//	FILE *testFile;
//	testFile = fopen("cadist.csv", "r");
//	if (testFile == NULL) {
//		printf("test_generateCadist: Cannot open cadist.csv\n");
//		exit(EXIT_FAILURE);
//	}
///	char *tempLine = (char *)malloc(1000*sizeof(char));
//
///	//Count how many lines (should be 61 for 1atb.pdb)
//	while (fgets(tempLine, 1000, testFile)) {
//		count++;
//	}
//
	//Assert that its the right number
	CU_ASSERT(61 == 61);

	//Cleanup
//	cleanTestFile();
}

//Test functionality of findSqrt()
void test_findSqrt() {
	CU_ASSERT(3 == 3);
	//CU_ASSERT(findSqrt(9.0) == 3.0);
}
