set -e
DST="/Users/santtu/move_to_s3/"


if [ ! -d $DST ]; then
	mkdir $DST
fi


# MAIN/OMAT/
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2017/" $DST "2017-10-28-2017" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2016/" $DST "2017-10-28-2016" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2015/" $DST "2017-10-28-2015" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2014/" $DST "2017-10-28-2014"
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2013/" $DST "2017-10-28-2013"
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2012/" $DST "2017-10-28-2012" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2011/" $DST "2017-10-28-2011" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2010/" $DST "2017-10-28-2010" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2009/" $DST "2017-10-28-2009" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2008/" $DST "2017-10-28-2008" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2007/" $DST "2017-10-28-2007"   
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2006/" $DST "2017-10-28-2006" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2005/" $DST "2017-10-28-2005" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2004/" $DST "2017-10-28-2004" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2003/" $DST "2017-10-28-2003" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2002/" $DST "2017-10-28-2002" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2001/" $DST "2017-10-28-2001" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2000/" $DST "2017-10-28-2000" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/1999/" $DST "2017-10-28-1999" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/0000/" $DST "2017-10-28-0000" 
./zipup.sh "/Volumes/DataCopy/lightroom/main/Omat/2XXX/" $DST "2017-10-28-2XXX" 

# MAIN/REJECTED
./zipup.sh "/Volumes/DataCopy/lightroom/main/Rejected/" $DST "2017-10-28-REJECTED" 


# MAIN/POISTETTUT
./zipup.sh "/Volumes/DataCopy/lightroom/poistetut/" $DST "2017-10-28-POISTETUT" 

# CATALOG BACKUP
./zipup.sh "/Volumes/DataCopy/lightroom/Catalog backup/" $DST "2017-10-28-CATALOG"
