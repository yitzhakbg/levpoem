+++
Categories = ["Mac"]
Description = "Hard learned Mac lessons"
Tags = ["Mac", "tips"]
author = "YBG"
date = "2015-12-27T16:27:35+03:00"
menu = "main"
title = "Wild Quick Look & stuck boot"
subtitle = "Memory usage blows up and boot gets stuck"
+++

## Emergency paddle when up the creek

### Scary....

System disk kept running out of space. Found that /var/vm, where the swap files appear was filling up with loads of swap files. Culprit was Quick Look whose memory usage was spiraling out of control, gobbling up all available system memory and obviously, forcing swapping in its wake. /var/folders had grown to over 2.4 GB. Apparently resulted from some corrupt cache file, but who cares? Couldn't tame the wild Quick Look. Searching revealed that the phenomenon wasn't unknown. Nothing helped, including repeated reboots.

No recourse other than using a sledge hammer: renamed /var/folders and rebooted. That's when the action started.

### Stuck boot

Boot kept getting hung in the middle and all the magic Mac boot keys where ignored. Up a well known creek. Luckily, we could ssh in. Slogging through more searches on the /var/folders issue brought about mkdir /var/folders. That was enough. Machine booted and performance became even better than before the mess.

### Smarter with hind sight  
#### Lessons Learned

1. Don't panic.
2. [C|S]ould have restored /var/folders from Time Machine.
3. ssh'ing into a stuck Mac is a handy thing to know.

As always, these things pop up afterwards. Discovered [this nugget by Ferndave](http://www.ferndave.com/2012/12/31/disable-mac-quick-look/):

    cd /System/Library/Frameworks/QuickLook.framework/Resources/quicklookd.app/Contents/MacOS  
    sudo mv quicklookd quicklookd.disabled  
    sudo mv qlmanage qlmanage.disabled

Could have saved a lot of sweat, but _better late than never_.
