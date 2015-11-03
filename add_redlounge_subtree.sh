#!/usr/bin/zsh
#
# Either
# git subtree add --prefix themes/redlounge git@github.com:yitzhakbg/redlounge.git master --squash
# git fetch https://github.com/yitzhakbg/redlounge.git master
# to update code:
# git subtree pull --prefix themes/redlounge git@github.com:yitzhakbg/redlounge.git master --squash
#
# Or (slightly easier)
git remote add -f redlounge git@github.com:yitzhakbg/redlounge.git
git subtree add --prefix themes/redlounge redlounge master --squash
# to update code:
# ./update_redlounge_subtree.sh
# which contains:
# git fetch redlounge master
# git subtree pull --prefix themes/redlounge redlounge master --squash
# Contributing back to upstream
# See http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree
