cp /mnt/sd/busybox-armv5l /sbin/busybox
chmod a+x /sbin/busybox
# the line below allows telnet 192.168.11.254
/sbin/busybox telnetd -l /bin/bash &

cp /mnt/sd/listen_for_gcode.sh /sbin/listen_for_gcode
chmod a+x /sbin/listen_for_gcode
/sbin/listen_for_gcode &
