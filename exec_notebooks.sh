#!/bin/bash

if [ -d notebooks_exe ]; then
  rm -rf notebooks_exe
fi
cp -r notebooks notebooks_exe

# execute notebooks
jupyter nbconvert --to notebook --execute --inplace notebooks_exe/files/*.ipynb
jupyter nbconvert --to notebook --execute --inplace notebooks_exe/files/opt4puzzle/*.ipynb

