+++
Categories = ["Mac"]
Description = "Hard learned Mac lessons"
Tags = ["Mac", "tips"]
author = "YBG"
date = "2015-11-27T16:27:35+03:00"
menu = "main"
title = "Disabling Mac Quick Look & Cleaning folders"
subtitle = "When memory usage blows up"
<!-- bannerinline = "/images/bubbles_in_bubbles.jpg"
bannerheight = 500
bannerfill = false
 --># lang = "he"
+++

## Scary Sweat

Whew! System disk kept running out of space. Found that /var/vm, where the swap files appear was filling up with loads of swap files. Culprit was Quick Look whose memory usage was spiraling out of control, gobbling up all available system memory and, obviously, forcing swapping in its wake. Apparently resulted from some corrupt cache file, but who cares? Couldn't tame the wild Quick Look. Nothing helped, including repeated reboots, so there was no recourse other than using a sledge hammer: Made a copy of /var/folders and deleted it. That's when the action started.

## Lost control of the boot

Boot kept getting hung in the middle and all the magic Mac boot keys where ignored. Up a well known creek. Luckily, we could ssh in. Slogging through more searches on the /var/folders issue brought about mkdir /var/folders. That was enough. Machine booted and performance became even better than before the mess.

## Always smarter with hind sight

Discovered [this nugget by Ferndave](http://www.ferndave.com/2012/12/31/disable-mac-quick-look/):

cd /System/Library/Frameworks/QuickLook.framework/Resources/quicklookd.app/Contents/MacOS

sudo mv quicklookd quicklookd.disabled
sudo mv qlmanage qlmanage.disabled

Could have saved a lot of sweat, but _better late than never_
