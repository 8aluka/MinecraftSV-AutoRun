#!/bin/sh

path=/home/mcadmin
ver=`ls /home/mcadmin/mcserver/ | grep jar`

echo -------------------- >> $path/mcserver-log.txt
date >> $path/mcserver-log.txt

cd $path/mcserver/
java -jar $ver nogui >> $path/mcserver-log.txt

