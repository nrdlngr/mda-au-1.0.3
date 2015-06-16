#!/bin/bash
cp -R ~/Library/Audio/Plug-Ins/Components/mda.component ~/github/mda-au-1.0.3/mda.component
hdiutil create -volname mda-au-1.0.3 -srcfolder ~/github/mda-au-1.0.3 -ov -format UDZO mda-au-1.0.3.dmg
xattr -d com.apple.FinderInfo mda-au-1.0.3.dmg
xattr -d com.apple.ResourceFork mda-au-1.0.3.dmg
