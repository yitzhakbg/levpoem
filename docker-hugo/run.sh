#!/bin/bash

WATCH="${HUGO_WATCH:=false}"
SLEEP="${HUGO_REFRESH_TIME:=-1}"
echo "HUGO_WATCH:" $WATCH
echo "HUGO_REFRESH_TIME:" $HUGO_REFRESH_TIME
echo "HUGO_THEME:" $HUGO_THEME
echo "HUGO_BASEURL" $HUGO_BASEURL
echo "HUGO_DEST" $HUGO_DEST

HUGO=/usr/bin/hugo

# Note: This doesn't work on Mac. Apparently entr monitors the file system in the VM in which Docker is running which is
# not the same as the host OS file system. We found that updating a file on the Mac does not trigger fmks while updating
# the same file inside the running Docker container does trigger even though it is the same file. This means that docker-
# compose has to be restarted manually on the Mac. This isn't a problem on Linux since Docker doesn't run in a VM.

while [ true ]
do
#
    find config{e,h}.toml {e,h}content static | entr ./fmks $HUGO_DEST $HUGO_BASEURL
    echo "Sleeping for $HUGO_REFRESH_TIME seconds..."
    sleep $SLEEP
done

