#!/bin/bash
# $1 = polku hakemistoon jossa pakattavat hakemistot ovat
# $2 = kohde hakemisto
set -e
echo Source folder: $1
echo Target folder: $2
echo Group: $3

#if [ -f $4/$1.done ]; then
#    echo "Allready zipped: $1"
#	exit 0
#fi

#if [ -d $4/$1 ]; then
#	echo "Removing incompleted zip: $1"
#	rm -Rf $4/$1
#fi
#echo DST $4/$1
#mkdir $4/$1

#echo "Zipping $1"
#7zr a -v1g -bb3 -t7z -m0=lzma2 -mx=9 -mfb=64 -md=64m -ms=on "$4/$1/$1" "$2/$3" > "$4/$1.log"

 
#touch $4/$1.done



cd "$1"
for f in *; do

	if [ ! -d "$2/$3" ]; then
		mkdir "$2/$3"
	fi

    if [ -d "$f" ]; then
    	if [ -f "$1/$f.done" ]; then
    		echo Skipping: "$f"
    	else
    		if [ -f "$1/$f.zipped" ]; then
    			echo Zipping already done: "$f"
    		else
				echo Zipping: "$f"    	
				7zr a -v1g -bb3 -t7z -m0=lzma2 -mx=9 -mfb=64 -md=64m -ms=on "$2/$3/$f" "$f" > "$2/$3/$f.log"
				touch "$1/$f.zipped" 
			fi
    		echo Syncing
    		s3cmd sync --no-delete-removed -v --progress --stats --cache-file="$2/$3/temp.md5"  "$2/$3" s3://santtu-lightroom/
    		echo Deleting "$2/$3"
    		rm -rf "$2/$3"
    		rm "$1/$f.zipped" 
    		touch "$1/$f.done" 
    	fi
    fi
done

#echo Syncing


echo Removing group folder
rm -rf "$2/$3"


#!/bin/bash
# $1 = paketin ja hakemiston nimi
# $2 = polku hakemistoon jossa pakattavat hakemistot ovat
# $3 = hakemiston nimi joka pakataan
# $4 = kohde hakemisto