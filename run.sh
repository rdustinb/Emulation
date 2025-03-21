#!/bin/bash

# Get this Script Location
THISFOLDER=`dirname $0`

THISVERSION=$1
THISUDPPORT=$2

# Copy over the system configuration
rsync -av ${THISFOLDER}/Configs/system${THISVERSION}.config ~/.basilisk_ii_prefs

# Run the System
/Applications/BasiliskII.app/Contents/MacOS/BasiliskII \
  --udpport ${THISUDPPORT} \
  --rom ${THISFOLDER}/ROMs/ColorClassic-1MB.rom \
  --disk ${THISFOLDER}/HDDs/HDD${THISVERSION}.dsk
