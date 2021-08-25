#!/bin/bash
# $1 = paketin ja hakemiston nimi
# $2 = polku hakemistoon jossa pakattavat hakemistot ovat
# $3 = hakemiston nimi joka pakataan
# $4 = kohde hakemisto
set -e
echo 1Paketti ja hakemisto:$1
echo 2Polku: $2
echo 3Pakattava hakemisto: $3
echo 4Kohde hakemisto: $4

if [ -f $4/$1.done ]; then
    echo "Allready zipped: $1"
	exit 0
fi

if [ -d $4/$1 ]; then
	echo "Removing incompleted zip: $1"
	rm -Rf $4/$1
fi
echo DST $4/$1
mkdir $4/$1

echo "Zipping $1"
7zr a -v1g -bb3 -t7z -m0=lzma2 -mx=9 -mfb=64 -md=64m -ms=on "$4/$1/$1" "$2/$3" > "$4/$1.log"

 
touch $4/$1.done
