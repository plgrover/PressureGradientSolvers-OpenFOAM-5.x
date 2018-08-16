#!/bin/bash

clear

mv pimpleDyMFoam pimpleDyMFoamGradP

cd pimpleDyMFoamGradP
mv pimpleDyMFoam.C pimpleDyMFoamGradP.C

sed -i s/pimpleDyMFoam/pimpleDyMFoamGradP/g pimpleDyMFoamGradP.C

echo "done"
