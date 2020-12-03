// @file io.h
#ifndef IO_H
#define IO_H
#include "Residue.h"

/** Read the PDB file line by line into a Residue pointer array
 * @param [in] pdb A file pointer
 * @param [in] num An int pointer which points to num in main
 * @param [out] A Residue pointer array
 */
Residue *readPDB(FILE *pdb, int *num);

#endif
