#!/bin/bash

# Get this Script Location
THISFOLDER=`dirname $0`

echo "Running from the folder ${THISFOLDER}"

# Copy over the system configuration
rsync -av ${THISFOLDER}/Configs/system.config ~/.basilisk_ii_prefs

# Run the System
/Applications/BasiliskII.app/Contents/MacOS/BasiliskII \
  --rom ${THISFOLDER}/ROMs/ColorClassic-1MB.rom \
  --disk ${THISFOLDER}/Floppys/System7_Boot.dsk \
  --disk ${THISFOLDER}/Floppys/System7.5.3_Install.dsk \
  --disk ${THISFOLDER}/HDDs/HDD.dsk
