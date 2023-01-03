#!/bin/bash
# change all (../screenshots/
# in (screenshots/

# sh /Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/scripts/removeCommentsInMDfiles.sh
# 
FILES=/Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/md/*.md
#FILES=md/*.md
for f in $FILES
do
    echo "0 : Removing comments from $f file..."
    cp -R $f  $f.mdwocomments

done
echo "-------------------------------------------------------------"
echo " Comments REMOVED !"
echo "-------------------------------------------------------------"