#!/bin/bash

/usr/bin/Xvfb -displayfd 1 -ac -screen 0 1920x1080x24 > display_id &
COUNTER=0
while [  $COUNTER -lt 10 ];
do
    let COUNTER=COUNTER+1
    display_fd=`cat display_id`
    echo 'Display_fd: ' $display_fd
    if [ ! -z $display_fd ];
    then
        echo "X11 server is up"
        break
    else
        echo "X11 server not ready yet, sleeping"
        sleep 1
    fi
done
if [ -z "$display_fd" ]
then
    echo "Unable to launch Xvfb, quitting."
    exit 1
fi
export DISPLAY=:$display_fd
echo 'Display set to ' $DISPLAY
xhost +
evilwm &
printf '\n'

robot --variable APP_URL:${APP_URL} -d output/ tests
