#!/bin/bash

clear
mkdir --parents applications/solvers/incompressible
cd applications/solvers/incompressible
cp -r $FOAM_APP/solvers/incompressible/pisoFoam .

mv pisoFoam pisoFoamGradP

cd pisoFoamGradP
mv pisoFoam.C pisoFoamGradP.C

sed -i s/pisoFoam/pisoFoamGradP/g pisoFoamGradP.C

echo "done"