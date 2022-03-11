#!/bin/bash
folder=$(pwd)
tab=$( ls $folder )
echo -n -e "$tab\n" > file.txt
while read part;do
      file2=$( echo $part | cut -d'.' -f2 )
      if [[ ! -d $part && $file2 != "sh" ]];then
	  file3=$( echo $part | cut -d'.' -f1)
	  mv ./$part ./$file3
      fi
done<file.txt
rm file.txt
rm -f *.sh~
rm -f *.txt~
rm -f *.js~
