#!/bin/bash

clear

mv pimpleDyMFoam pimpleDyMFoamGradP

cd pimpleDyMFoamGradP
mv pimpleFoam.C pimpleDyMFoamGradP.C

sed -i s/pimpleDyMFoam/pimpleDyMFoamGradP/g pimpleFoamGradP.C

echo "done"
