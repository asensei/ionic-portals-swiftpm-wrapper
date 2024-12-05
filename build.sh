#!/bin/bash

set -ev
rm -rf ionic-portals-ios-dynamic
git clone git@github.com:asensei/ionic-portals-ios-dynamic.git
cd ionic-portals-ios-dynamic
git checkout beta
./build2.sh . IonicPortals .