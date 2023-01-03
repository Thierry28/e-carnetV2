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
    #echo "1 : ${f#*.}"     # print md
    #echo "2 : ${f##*.}"    # print md
    ext="${f#*.}"      # store output in a shell variable 
    #echo "3 : $f has $ext extension" #  ext : md

    #basename "$f"
    filename="$(basename -- $f)"
    #echo "4 : $filename" # 00-CoverPage.md
    #sed -Ee 's/\(\.\.\/screenshots/\(screenshots/g' ../bck/$f.md1> $f.md2
    #sed -Ee 's/<!--.*-->//g' $f> $f.mdwocomments

    # https://unix.stackexchange.com/questions/10226/multiline-pattern-match-using-sed-awk-or-grep
    # sed -Ee '/[<!--]/,/[-->]/{
    #   p
    # }' $f> $f.mdwocomments

    # https://stackoverflow.com/questions/8164604/replacing-multiple-line-pattern-in-sed
    #sed -e '/begin/,/end/{s/begin/replacement/p;d}'
    #sed -Ee '/<!--/,/-->/{s/<!--//d}' $f> $f.mdwocomments # KO
    # move to NODE.js !!!

done
echo "-------------------------------------------------------------"
echo " Comments REMOVED !"
echo "-------------------------------------------------------------"