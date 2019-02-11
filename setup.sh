#!/bin/bash
if [ -d notebooks ]; then
  rm -rf notebooks
fi
unzip zip/notebooks.zip

