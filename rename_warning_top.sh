#!/bin/bash
folder=$(pwd)
tab=$( ls $folder )
echo -n -e "$tab\n" > file.txt
while read part;do
      file=$( echo $part | cut -d'.' -f2 )
      if [[ ! -d $part && $file != "sh" ]];then
	  mv ./$part ./$part.js
      fi
done<file.txt
rm file.txt
rm -f *.sh~
rm -f *.txt~
rm -f *.js~

