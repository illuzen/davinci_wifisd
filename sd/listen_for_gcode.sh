#!/bin/bash
while true;
do
{
       echo "Listening for gcode file"
        /sbin/busybox nc -l -p 9876 > /SAMPLE03.gcode_temp
        echo "Received gcode file"
        NEW_FILE_NAME=/SAMPLE03.gcode_$(/bin/date +"%y-%m-%d-%h-%M-%s")
        if [ -f /SAMPLE03.gcode ]
        then
                echo "Moving SAMPLE03.gcode to "$NEW_FILE_NAME
                mv /SAMPLE03.gcode $NEW_FILE_NAME
        fi

        echo "Moving temp file to SAMPLE03.gcode"
        mv /SAMPLE03.gcode_temp /SAMPLE03.gcode
        sleep 1
}
done