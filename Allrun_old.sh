#!/bin/sh
module add openfoam/v1606
./Allclean.sh

cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

# Get application directory
application=`getApplication`

scp -r 0.orig 0

#runApplication blockMesh

./inlet_points.sh

#- Run serial
#runApplication $application

#- Run parallel
runApplication decomposePar -cellDist
#runApplication decomposePar 
runParallel $application
#runApplication reconstructPar -latestTime

# ----------------------------------------------------------------- end-of-file
