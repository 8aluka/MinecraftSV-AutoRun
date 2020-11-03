#!/bin/sh

ver=`ls /home/mcadmin/mcserver/ | grep jar`

raw=`ps aux | grep "java -jar $ver"`

left=`echo $raw | cut -c 9-`
id=`echo $left | cut -c 1-4`

kill $id

echo "\033[;36m $ver stopped. \033[0;39m"
echo "\033[;34m If you want to start the service, reboot the system and the service will start automatically.\033[0;39m"
