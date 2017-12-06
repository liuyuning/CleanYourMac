#!/bin/bash

# CleanYourMac.sh or DeleteCacheFile.sh
# Created by liuyuning on 2015/10/16.
# Copyright © 2015-2017 liuyuning. All rights reserved.

INFO_BEFORE=$(df -lh)

mv ~/Library/Developer/Xcode/UserData ~/

sudo rm -rf /private/var/folders/*
sudo rm -rf /Library/Developer/ ~/Library/Developer/
sudo rm -rf /Library/Caches/ ~/Library/Caches/
sudo rm -rf /Library/Logs/ ~/Library/Logs/ /var/log/
sudo rm -rf ~/Library/iTunes

sudo rm -rf /Library/SystemMigration/
sudo rm -rf  /private/var/tmp/


sudo rm -rf /System/Library/Caches/com.apple.coresymbolicationd

#apache log dir
sudo mkdir  /var/log/apache2/

#Asset Catalog Compiler Error
#Failed to find a suitable device for the type IBSimDeviceTypeiPad2x(com.apple.dt.Xcode.IBSimDeviceType.iPad-2x) with runtime iOS 11.2 (11.2 - 15C107) - com.apple.CoreSimulator.SimRuntime.iOS-11-2
#Assets.xcassets
#Asset Catalog Compiler Error Group
#.../Assets.xcassets: Failed to launch IBCocoaTouchImageCatalogTool via CoreSimulator spawn
#Interface Builder Storyboard Compiler Error Group
#.../Base.lproj/LaunchScreen.storyboard: Internal error. Please file a bug at bugreport.apple.com and attach "/var/folders/5f/0s8jnpp513l9y48q4z1thx6m0000gn/T/IB-agent-diagnostics_2017-12-06_15-40-01_656000".
sudo mkdir ~/Library/Logs/
sudo chmod 755 ~/Library/Logs/

mkdir -p  ~/Library/Developer/Xcode/
mv ~/UserData ~/Library/Developer/Xcode/

#GarageBand 音乐创作
#https://www.tekrevue.com/tip/delete-garageband/
sudo rm -r "/Applications/GarageBand.app" #(1.16GB)
sudo rm -r "/Library/Application Support/GarageBand" #(995MB)
sudo rm -r "/Library/Application Support/Logic" #(880MB)
sudo rm -r "/Library/Audio/Apple Loops" #(up to 10GB)*

#安装Xcode插件
sudo installer -verbose -pkg /Applications/Xcode.app/Contents/Resources/Packages/XcodeSystemResources.pkg -target /

echo "==== BEFORE ===="
echo "${INFO_BEFORE}"
echo "==== AFTER ===="
df -lh


