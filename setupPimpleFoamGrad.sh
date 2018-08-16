#!/bin/bash

clear
mkdir --parents applications/solvers/incompressible
cd applications/solvers/incompressible
cp -r $FOAM_APP/solvers/incompressible/pimpleFoam .

mv pimpleFoam pimpleFoamGradP

cd pimpleFoamGradP
mv pimpleFoam.C pimpleFoamGradP.C

sed -i s/pimpleFoam/pimpleFoamGradP/g pimpleFoamGradP.C

echo "done"
