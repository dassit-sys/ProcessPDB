// main.md
@mainpage Project Assign_4
This is the main page for the project.

1. This project takes a PDB (Protein Data Bank) file and produces two CSV files from it:
- center.csv - Each line in this file reads: ResidueName, ResidueIndex, Pseudocenter X-Coordinate, Pseudocenter Y-Coordinate, Pseudocenter Z-Coordinate
- cadist.csv - Each line in this file reads: ResidueAName, ResidueAIndex, ResidueBName, ResidueBIndex, Distance between CA atom in current residue and CA atom in next residue
2. This program consists of three modules:
- main.c - This module is the main entry point of the program. It contains the main method which accepts one argument from the command line. That argument should be the name of the PDB file, given in this format: "pdbFileName.pdb" without quotes.
- io.c - This module contains readPDB(), which reads the contents of the given PDB file and then converts it into a Residue pointer array, which it returns.
- util.c - This module contains generateCenter() and generateCadist() which both take the Residue pointer array and generate their files, center.csv and cadist.csv.
