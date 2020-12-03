# ProcessPDB - Elijah Eason

The Assign_4 executable reads in a PDB (Protein Data Bank) file and produces two CSV files from it:
- center.csv - Each line in this file reads: ResidueName, ResidueIndex, Pseudocenter X-Coordinate, Pseudocenter Y-Coordinate, Pseudocenter Z-Coordinate
- cadist.csv - Each line in this file reads: ResidueAName, ResidueAIndex, ResidueBName, ResidueBIndex, Distance between CA atom in current residue and CA atom in next residue

## Usage
1. Build Assign_4 executable using Makefile/CMake
2. Run like this (where 'file' is a PDB file):
> ./Assign_4 file.pdb
3. Output will be saved to center.csv and cadist.csv in the home directory

### Installation from Github
> git clone https://github.com/dassit-sys/ProcessPDB.git   
> cd ProcessPDB  
  

Build using:  
  

> sudo su   
  
(sudo needed to copy README and LICENSE to /.local)  
  
> cmake ./  
> make  
> make install   

### Uninstallation
Run from parent directory
> sudo rm -rf ProcessPDB

## Development
Developed and tested by Elijah Eason. Written entirely in C
