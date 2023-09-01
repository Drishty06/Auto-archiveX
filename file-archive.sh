#!/bin/bash
#$Revision:001$

#Variables
BASE=/home/drishty/Desktop/archiveX/demo-files
DAYS=1
DEPTH=1 #how much deep we need to search, depth = 1 signifies that we dont have to go deeper in the directory
RUN=0 

#Check if the directory is present or not
if [ ! -d $BASE ]
then
    echo "directory does not exist: $BASE"
    exit 1
fi 

#create archive folder if not present
if [ ! -d $BASE/archive ]
then 
    mkdir $BASE/archive
fi 

#find the list of files larger than 5MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +5M`
do
    if [ $RUN -eq 0 ]
    then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1 # compressing the file
        mv $i.gz $BASE/archive || exit 1 # moving compressed file to archive folder
    fi
done

# give executable permission to file-archive.sh using chmod


