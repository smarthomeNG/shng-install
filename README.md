# shng-install
Routines and configurations for automatic installation of SmartHomeNG

## Raspberry Pi
Automatic install of 
- operation system (RaspPi OS) 
- SmartHomeNG 
- smartVISU 

To install software follow these steps:

- format a sd card with filesystem FAT
- copy the contents of the archive PINN-lite-shng.zip to the sd card
  - extract the files of the archive to the sd card   or
  - extract the archive to a local folder and copy the files to the root of the sd card   or
  - use tool etcher to write the content of the archive to the sd card
- insert the sd card into the Raspberry Pi
- boot the Raspberry Pi and choose the Installation variant from the menu
  - the operating system is going to be installed from the internet
  - After the installation is complete, press return in the dialog 
  - the Raspberry Pi will reboot and start the postinstall routine, which installs SmartHomeNG and the other software
  - after the installation is complete, you can connect to 
    - the AdminGUI of SmartHomeNG using url http://<ip of pi>:8383
    - the smartVISU using url http://<ip of pi>/smartvisu
    - the smartVISU v2.8 using url http://<ip of pi>/smartvisu28
  - you can (if you wish) login with the user pi ( password shng
