/// @file util.h
#ifndef UTIL_H
#define UTIL_H
#include "Residue.h"

/**Generates center.csv
 * @param [in] residues A Residue pointer array
 * @param [in] num The number of residues in the array
 */
void generateCenter(Residue *residues, int *num);

/**Generates cadist.csv
 * @param [in] residues a Residue pointer array
 * @param [in] num The number of residues in the array
 */
void generateCadist(Residue *residues, int *num);

/** Calculates the square root of a given float
 * @param [in] num The number whose square root will be found
 * @param [out] a float number equaling the square root of "num"
 */
float findSqrt(float num);

#endif
