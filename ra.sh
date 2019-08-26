#!/bin/bash

DIRNAME=`pwd -P`
echo $DIRNAME
sed -e "s|\$FLASHNTP|$DIRNAME/platforms/ios/FlashFans/Plugins/com.halifone.flashfans.flashplugin/src/ntp|g" $DIRNAME/../flashplugin/plugin_pattern.xml > $DIRNAME/../flashplugin/plugin.xml
cordova plugin remove com.halifone.flashfans.flashplugin
cordova plugin add ../flashplugin --nofetch
ionic cordova prepare android 
