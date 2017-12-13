#!/bin/bash

# removes brackets from inlet points file

#alter the file
cp inlet_points temp1                  #keep orig file U
sed 's/(//g' temp1 > temp2                  #remove '('
sed 's/)//g' temp2 > temp3              #remove ')'
mv temp3 inlet_points_trim

#remove this file now Uall.dat is full
rm -f temp*


