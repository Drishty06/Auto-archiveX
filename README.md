# ArchiveX 

### Requirements

* In a given directory, if you find files more than a given size eg: 20 mb ot files older than given days eg: 10 days, compress those files and move in a archive folder

### Purpose of this script

* if in a particular directory, a server is producing large log files sized in GBs then after a certain point of time, it will run out of space and to avoid this this script is helpful.

### Steps

[.] Provide the path of directory
[.] Check if the directory is present or not
[.] Create 'archive' folder if not already present
[.] find all the files with size more than 200 mb
[.] compress each file
[.] move the compressed files in 'archive' folder
[.] make a cron job to run the script everyday