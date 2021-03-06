#!/bin/bash

#    Run in current working directory and use current environment
#$ -cwd -V

#    Send email at job start and end
#$ -m be
#$ -M scrh@leeds.ac.uk

#    Set time 
#$ -l h_rt=10:00:00       # time needed

#    How many nodes, how many processors per node (16 cores per 1 node)
#$ -l nodes=4,ppn=24 

module switch intel/17.0.1 gnu/6.3.0
module add openfoam/v1612+
#module add openfoam/v1606
source $FOAM_SRC_FILE

scp -r 0.orig 0

decomposePar

mpirun -np 96 pimpleFoam -parallel >> log


# ----------------------------------------------------------------- end-of-file
