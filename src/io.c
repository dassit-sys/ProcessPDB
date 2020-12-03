/// @file io.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "Atom.h"
#include "Residue.h"
#include "util.h"

/**
 * Read the PDB file line by line into a Residue pointer array 
 * @param [in] pdb A file pointer
 * @param [in] num An int pointer which points to num in main
 * @param [out] A Residue pointer array
 */
Residue *readPDB(FILE *pdb, int *num) {

	//This will hold all of the parsed residues (at the very end)
	Residue *residues = (Residue *)malloc(1000*sizeof(Residue));
	
	//1. First check for valid filename:
	if (pdb == NULL) {
		printf("Could not open file!\n");
		exit(EXIT_FAILURE);
	}

	char *pdbLine = (char *)malloc(1000*sizeof(char)); //This will hold the current line being read

	bool foundFirstAtomLine = false; //Used in the following loop to prevent an issue

	//2. Read the lines from the PDB file:
	//While there are lines remaining
	while (fgets(pdbLine, (1000*sizeof(char)), pdb)) {

		//If it is an "ATOM" line
		if (pdbLine[0] == 'A' && pdbLine[1] == 'T' && pdbLine[2] == 'O' && pdbLine[3] == 'M') {	
			
			//Make the atom up from the line's tokens, using strtok()
			Atom tempAtom;		
			strtok(pdbLine, " "); //Returns "ATOM", we don't need
			tempAtom.atomIndex = atoi(strtok(NULL, " ")); //Returns serial, AKA atom index

			//Next comes the strings
			char *atomNameTemp = strtok(NULL, " "); //Returns atom name
			memcpy(tempAtom.atomName, atomNameTemp, strlen(atomNameTemp)); //Copy to tempAtom
			tempAtom.atomName[strlen(atomNameTemp)] = '\0'; //Add '\0'
			char *residueNameTemp = (char *)strtok(NULL, " "); //Returns residue name
			memcpy(tempAtom.residueName, residueNameTemp, strlen(residueNameTemp)); //Copy to tempAtom
			tempAtom.residueName[strlen(residueNameTemp)] = '\0'; //Add '\0'     
			char *chainTemp = (char *)strtok(NULL, " "); //Returns chain ID
			memcpy(tempAtom.chain, chainTemp, strlen(chainTemp)); //Copy to tempAtom
			tempAtom.chain[strlen(chainTemp)] = '\0'; //Add '\0'

			//Next are the remaining numbers (resIndex and xyz coords)
			tempAtom.residueIndex = atoi(strtok(NULL, " ")); //Returns residue sequence, AKA residue index
			tempAtom.x = atof(strtok(NULL, " ")); //Returns x coordinate
			tempAtom.y = atof(strtok(NULL, " ")); //Returns y coordinate
			tempAtom.z = atof(strtok(NULL, " ")); //Returns z coordinate

			//Residue index ideally should count up from 0. However this is not always the case, for example in 1bcd.pdb			
			//If residueIndex > numRes, we know we must create a new residue for that iteration. (Talking about the while loop below)		
			//If this is the first line read, set 'num' to the first line's residueIndex to avoid a miscounting issue:
			int pdbOffset;
			if (!foundFirstAtomLine) {
				pdbOffset = tempAtom.residueIndex; //Now it doesn't matter if the file starts counting residues from 0, or from any other number. We will use pdbOffset to offset the counting
				foundFirstAtomLine = true;
			}
			
			//3. Add it to the correct residue or create a new one
			//Check if we need to create residue or not: 
			if (tempAtom.residueIndex-pdbOffset > *num-1) { //Create new residue and add atom
				Residue tempResidue;
				tempResidue.atoms = (Atom *)malloc(100*sizeof(Atom)); //Allocate memory for new residue (up to 100 atoms)
				tempResidue.atoms[0] = tempAtom; //Add atom to residue
				tempResidue.atomNum = 1; //Set initial number of atoms in residue
				residues[*num] = tempResidue; //Add to list
				(*num)++; //Increment number of residues existing

			} else { //Add it to the appropriate one (tempAtom.residueIndex), already existing one

				//Iterate existing residues, stopping at the one with the right chain ID:
				for (int x = 0; x < *num; x++) {
					if (x+pdbOffset == tempAtom.residueIndex) {
						residues[x].atoms[residues[x].atomNum] = tempAtom; //Add atom to the residue
						residues[x].atomNum++; //Increment num atoms in residue
					}
				}
			}
		}
	}
	return residues;
}
