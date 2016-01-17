#!/bin/bash
set -x
WATCH="${HUGO_WATCH:=false}"
SLEEP="${HUGO_REFRESH_TIME:=-1}"
echo "HUGO_WATCH:" $WATCH
echo "HUGO_REFRESH_TIME:" $HUGO_REFRESH_TIME
echo "HUGO_THEME:" $HUGO_THEME
echo "HUGO_BASEURL" $HUGO_BASEURL
echo "HUGO_DEST" $HUGO_DEST
echo "1st language is " $l1
echo "2nd language is " $l2

HUGO=/usr/bin/hugo

# Note: This doesn't work on Mac. Apparently entr monitors the file system in the VM in which Docker is running which is
# not the same as the host OS file system. We found that updating a file on the Mac does not trigger fmks while updating
# the same file inside the running Docker container does trigger even though it is the same file. This means that docker-
# compose has to be restarted manually on the Mac. This isn't a problem on Linux since Docker doesn't run in a VM.

if [[ ! ${l1+x} ]] && [[ ! ${l2+x} ]]; then
  while [ true ]
  do
    echo "no languages specified"
    [[ ! -d content ]] && { echo "No content!"; exit 1; }
    find config.toml content static | entr hugo -d $HUGO_DEST -t redlounge -b $HUGO_BASEURL # Do the plain vanilla build
    echo "Sleeping for $HUGO_REFRESH_TIME seconds..."
    sleep $SLEEP
  done
fi

# Must specify two languages.
[[ ! ${l1+x} ]] && [[ ${l2+x} ]] && { echo "Sorry. Only one language given"; exit 1; }
[[ ${l1+x} ]] && [[ ! ${l2+x} ]] && { echo "Sorry. Only one language given"; exit 1; }


while [ true ]
do
#
    find config{$l1,$l2}.toml {$l1,$l2}content static | entr ./fmks $HUGO_DEST $HUGO_BASEURL
    echo "Sleeping for $HUGO_REFRESH_TIME seconds..."
    sleep $SLEEP
done

