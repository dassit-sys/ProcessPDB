/// @file util.c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "Atom.h"
#include "Residue.h"
#include "util.h"

/** Generates center.csv
 * @param [in] residues A Residue pointer array
 * @param [in] num The number of residues in the array
 */
void generateCenter(Residue *residues, int *num) {
	FILE *fp;
	fp = fopen("center.csv", "w");

	for (int x = 0; x < *num; x++) { //For each residue
		
		float divisor = 0.0; //For averaging
		float xAve = 0.0;
		float yAve = 0.0;
		float zAve = 0.0;

		for (int y = 0; y < residues[x].atomNum; y++) { //For each atom
			//If residue[x] is a 'N', 'CA', or 'C' atom			
			if ((memcmp(residues[x].atoms[y].atomName, "N", sizeof(char)) == 0 && strlen(residues[x].atoms[y].atomName) == 1) || (memcmp(residues[x].atoms[y].atomName, "CA", sizeof(char)*2) == 0 && strlen(residues[x].atoms[y].atomName) == 2) || (memcmp(residues[x].atoms[y].atomName, "C", sizeof(char)) == 0 && strlen(residues[x].atoms[y].atomName) == 1)) { //If the atom is N, CA, or C
				//Then add the coordinate data to the total
				xAve += residues[x].atoms[y].x;
				yAve += residues[x].atoms[y].y;
				zAve += residues[x].atoms[y].z;
				divisor++;
			}
			
		}
	
		//Find average by dividing by number of matching atoms
		xAve /= divisor;
		yAve /= divisor;
		zAve /= divisor;
					
		//Print results to center.csv
		fprintf(fp, "%s,%d,%.3f,%.3f,%.3f\n", residues[x].atoms[0].residueName, residues[x].atoms[0].residueIndex, xAve, yAve, zAve);
	}
}

/** Generates cadist.csv
 * @param [in] residues a Residue pointer array
 * @param [in] num The number of residues in the array
 */
void generateCadist(Residue *residues, int *num) {
	FILE *fp;
	fp = fopen("cadist.csv", "w");

	for (int x = 0; x < (*num)-1; x++) { //For each residue
		
		Atom *a = NULL;//Will hold start CA atom
		Atom *b = NULL;//Will hold end CA atom

		//Find first CA atom
		for (int y = 0; y < residues[x].atomNum; y++) { //For each atom
			if (memcmp(&residues[x].atoms[y].atomName, "CA", sizeof(char)*2) == 0) {
				a = &residues[x].atoms[y];						}
		}

		//Find second CA atom
		for (int y = 0; y < residues[x].atomNum; y++) { //For each atom
			if (memcmp(&residues[x+1].atoms[y].atomName, "CA", sizeof(char)*2) == 0) {
				b = &residues[x+1].atoms[y];
			}
		}
		

		//Calculate the difference and write it into cadist.csv
		if (a != NULL && b != NULL) { //Prevent null pointers
			fprintf(fp, "%s, %d, %s, %d, %.3f\n", a->residueName, a->residueIndex, b->residueName, b->residueIndex, findSqrt((((b->x-a->x)*(b->x-a->x))+((b->y-a->y)*(b->y-a->y))+((b->z-a->z)*(b->z-a->z)))));
		}
	}
}

//I couldn't #include "math.h" while using CMake (it caused a weird error), so I had to write this method to avoid using sqrt()
/** Calculates the square root of a given float
 * @param [in] num The number whose square root will be found
 * @param [out] a float number equaling the square root of "num"
 */
float findSqrt(float num) {
	float result = num/2; //Result = half of user entry
	float prev = 0; //Holds previous 'result' while looping below

	//while they are still different
	while (result != prev) {
		prev = result; //Copy result into prev
		result = (num/prev+prev)/2; //Calculate for this iteration
	}

	return result;
}
