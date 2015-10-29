#!/usr/bin/zsh
#
# Either
# git subtree add --prefix themes/hugo-redlounge https://github.com/yitzhakbg/hugo-redlounge.git master --squash
# git fetch https://github.com/yitzhakbg/hugo-redlounge.git master
# to update code:
# git subtree pull --prefix themes/hugo-redlounge https://github.com/yitzhakbg/hugo-redlounge.git master --squash
#
# Or (slightly easier)
git remote add -f hugo-redlounge https://github.com/tmaiaroto/hugo-redlounge.git
git subtree add --prefix themes/redlounge hugo-redlounge master --squash
# to update code:
./update_redlounge_subtree.sh
# which contains:
# git fetch hugo-redlounge master
# git subtree pull --prefix themes/hugo-redlounge hugo-redlounge master --squash
# Contributing back to upstream
# See http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree
