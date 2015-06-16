#!/bin/bash
# Create .dmg image of MDA plug-ins

# Copy plug-in build artifact from ~/Library/Audio/Plug-Ins/Components/
cp -R ~/Library/Audio/Plug-Ins/Components/mda.component ./mda-au-1.0.3/

# Create .dmg from current folder
hdiutil create -volname mda-au-1.0.3 -srcfolder ./mda-au-1.0.3 -ov -format UDZO mda-au-1.0.3.dmg

# Remove ACLs from built files
xattr -d com.apple.FinderInfo mda-au-1.0.3.dmg
xattr -d com.apple.ResourceFork mda-au-1.0.3.dmg
