#!/bin/sh
module add openfoam/v1606
#rm -rf constant/polyMesh 

foamListTimes -rm
rm -rf 0
rm -rf processor* log.*
rm -rf constant/cell*
rm -rf constant/boundaryData/IN/points 
rm -rf constant/boundaryData/IN/inlet_points


# ----------------------------------------------------------------- end-of-file
