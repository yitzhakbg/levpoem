#!/usr/bin/env sh

WATCH="${HUGO_WATCH:=false}"
SLEEP="${HUGO_REFRESH_TIME:=-1}"
echo "HUGO_WATCH:" $WATCH
echo "HUGO_REFRESH_TIME:" $HUGO_REFRESH_TIME
echo "HUGO_THEME:" $HUGO_THEME
echo "HUGO_BASEURL" $HUGO_BASEURL
echo "HUGO_DEST" $HUGO_DEST

HUGO=/usr/bin/hugo

while [ true ]
do
    find {f,h}content static | entr ./fmks
    echo "Sleeping for $HUGO_REFRESH_TIME seconds..."
    sleep $SLEEP
done

