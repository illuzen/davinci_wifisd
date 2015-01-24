

This is set of scripts that enables one to print .stl files on a davinci 1.0 3d printer without using xyz's shitty closed-source software. 

Shout-outs and snuggles to Pablo at Haxit and Mark Fuller, whose work made this possible. 

And thanks to xyzprinting for making an awesome piece of hardware :D



Prerequisites:

1) Transcend WIFI SD card (may require firmware 1.7 or lower)

2) Davinci 1.0 3d Printer

3) Slic3r

4) Screwdriver

5) Nimble Fingers



Instructions:

1) Mount the Transcend WIFI SD card onto your computer somehow (usb adapter or sd port)

2) Copy the contents of the directory sd/ onto the SD card. On the next boot, the card will run autorun.sh, which installs busybox and opens a netcat process listening for gcode files on port 9876.

3) Eject the wifi sd card.

4) If the printer is on, turn it off and unplug it. Using screwdriver and nimble fingers, open the back of the printer and remove the screws holding the circuit board in place. This will allow you to move the circuit board a little to the left. Be careful not to damage it. By moving it to the left, you should be able to remove the tape on the SD card that the printer came with. Roll back the tape (leave it there so you can replace it later to avoid awkward conversations should you need to return the printer) and pull out the normal sd card. 

5) Insert the wifi sd card into the sd port.

6) Start the printer. This will power on the wifi sd card.

7) Get a computer with a functioning wifi card and connect to the wifi card. The wifi network should be named "WIFISD" and the password will probably be 12345678 unless someone changed it.

8) Open /client/3d_print in a text editor and set the SLIC3R variable to the path to your installation of slic3r. Save and close the file.

9) Get a .stl file you want to print and run the /client/3d_print script with the name of the .stl file as the first argument, leaving off the suffix. 



Example:

I want to print /path/to/rose.stl so I enter the following command

./client/3d_print /path/to/rose

Notice I left off the suffix. 

Now the script should run slic3r on your .stl file and then prepend it with some comments that the printer likes and then netcat it over to the printer.

Happy printing!
  
  