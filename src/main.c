/// @file main.c
#include <stdio.h>
#include <stdlib.h>
#include "Atom.h"
#include "Residue.h"
#include "io.h"
#include "util.h"

/** Main entry point of the program
 * @param [in] argc an integer
 * @param [in] *argv[] a char pointer array
 * @param [out] an integer number
 */
int main(int argc, char *argv[]) {
	int *num = (int *)malloc(sizeof(int)*5);
	//1. Read pdb from arg
	FILE *pdb;
	pdb = fopen(argv[1], "r");

	//2. Read the entire contents of the PDB file into a Residues pointer array
	Residue *residues = readPDB(pdb, num);

	//3. Generate center.csv
	generateCenter(residues, num);

	//4. Generate cadist.csv
	generateCadist(residues, num);

	//5. Close file
	fclose(pdb);
	return 0;
}
