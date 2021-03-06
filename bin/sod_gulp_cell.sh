#!/bin/bash

ls -l *.gout |awk '{print "cellgulp", $8}' > rungetcell
chmod +x rungetcell
./rungetcell
paste  a.dat b.dat c.dat alpha.dat beta.dat gamma.dat volume.dat > cell.dat
rm rungetcell a.dat b.dat c.dat alpha.dat beta.dat gamma.dat volume.dat
awk '{print $1*$2*sin((3.1415926)*$6/(180.0)), $7}' cell.dat > av.dat

