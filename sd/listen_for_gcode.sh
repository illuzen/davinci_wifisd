#!/bin/bash
while true;
do
{
	/sbin/busybox nc -l -p 9876 > /SAMPLE03.gcode_temp
	NEW_FILE_NAME=/SAMPLE03.gcode_$(/bin/date +"%y-%m-%d-%h-%M-%s")
	if [ -f /SAMPLE03.gcode ]
	then
		mv /SAMPLE03.gcode $NEW_FILE_NAME
	fi
	mv /SAMPLE03.gcode_temp /SAMPLE03.gcode
}
done