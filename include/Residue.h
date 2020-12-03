#ifndef RESIDUE_H
#define RESIDUE_H
#include "Atom.h"

typedef struct {
	int atomNum;
	Atom *atoms;
} Residue;

#endif
