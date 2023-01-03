#!/bin/bash
# change all (../screenshots/
# in (screenshots/

# sh /Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/scripts/removeDotDotSlashInMDfiles.sh
# 
FILES=/Users/thierrygaillot/Projets/USER_GUIDES/Ecm_guide/md/*.md
#FILES=md/*.md
for f in $FILES
do
    echo "Processing $f file..."
    echo "${f#*.}"     # print tar.gz
    echo "${f##*.}"    # print gz
    ext="${f#*.}"      # store output in a shell variable 
    echo "$f has $ext extension" # display it

    #basename "$f"
    filename="$(basename -- $f)"
    echo "$filename"

  #cp "$f" ../bck/"$f".md1
  #sed -Ee 's/\(\.\.\/screenshots/\(screenshots/g' ../bck/$f.md1> $f.md2
  #cp $f.md2 $f
  #rm $f.md2
    # rm "$f"
  # take action on each file. $f store current file name
  # cat $f
done