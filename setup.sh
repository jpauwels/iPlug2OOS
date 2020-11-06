#!/bin/bash

git submodule init
git submodule update
cd iPlug2/Dependencies/IPlug/
./download-iplug-sdks.sh
cd ../../..
python3 duplicate.py MyNewPlugin $1 $2
rm -r MyNewPlugin
git add $1
git commit -a -m "Renamed template project"
