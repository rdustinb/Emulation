#!/bin/bash

# Get this Script Location
THISFOLDER=`dirname $0`

# Copy over the system configuration
rsync -av ${THISFOLDER}/Configs/system.config ~/.basilisk_ii_prefs

# Run the System
/Applications/BasiliskII.app/Contents/MacOS/BasiliskII \
  --rom ~/Developer/WrenchAndGear/emulation/Basilisk/ROMs/ColorClassic-1MB.rom \
  --disk ~/Developer/WrenchAndGear/emulation/Basilisk/HDDs/System7.dsk
