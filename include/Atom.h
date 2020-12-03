#ifndef ATOM_H
#define ATOM_H

typedef struct {
	char atomName[10];
	char residueName[10];
	char chain[10];
	int atomIndex;
	int residueIndex;
	float x, y, z;
} Atom;

#endif
