#!/usr/bin/env bash

bundle=com.skywindgroup.game.amazonlady
team=99KD9248W8

sed -i '' "s/com.skywindgroup.game.single/${bundle}/g" single.xcodeproj/project.pbxproj
sed -i '' "s/99KD9248W8/${team}/g" single.xcodeproj/project.pbxproj
