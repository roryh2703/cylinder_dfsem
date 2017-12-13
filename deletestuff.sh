#!/bin/sh
cp constant/polyMesh/points.gz constant/polyMesh/points_raw.gz
gunzip constant/polyMesh/points_raw.gz
grep "(-0.36" constant/polyMesh/points_raw >> constant/boundaryData/IN/inlet_points
rm -rf constant/polyMesh/points_raw

rm -rf constant/boundaryData/IN/points
cp constant/boundaryData/IN/points_template constant/boundaryData/IN/points_build
cat constant/boundaryData/IN/inlet_points >> constant/boundaryData/IN/points_build
(cat constant/boundaryData/IN/points_build ; echo ")") > constant/boundaryData/IN/points
rm -rf constant/boundaryData/IN/points_build

# ----------------------------------------------------------------- end-of-file
