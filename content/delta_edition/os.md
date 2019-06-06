# Operating System

This document will go over the operating systems that are compatible with the LattePanda Delta. It will also cover acceptable boot media as well as instructions or resources for installing the operating system and special considerations.

## Overview

No doubt! LattePanda Delta is a **development device supporting 2 different operation systems.**

1. Windows 10 and other verions
2. Linux and other versions


!!! tips
    Please feel free to contribute or request new content via [Official Docs Repo](https://github.com/LattePandaTeam/Docs)

!!! warning
    Before the OS installation, please finish the backup of important data.

## Windows

<center>![](/assets/images/Windows_Logo.jpg)</center>

### Bootable Drive

* eMMC
* M.2 M-key NVMe SSD

### What you will need

* 1 x Blank USB flash drive (8 GB or larger)
* Windows 10 Image for LattePanda Delta

### Installation Steps

* Download the Windows 10 image for LattePanda Delta.

* Configure your USB drive to be a bootable drive. Instructions can be found [here](https://technet.microsoft.com/en-us/library/jj200124%28v=ws.11%29.aspx).

* Copy and paste the Windows 10 image contents to the USB drive. Then, the files in the USB flash driver should be look like the picture shown as below.
<center>![](/assets/images/file_in_usbdrive.jpg)</center>

* If you are using the LattePanda to create the USB installation media, restart the LattePanda. Otherwise, insert your USB drive into the LattePanda and turn it on. 

* Press 'Esc' continously to enter BIOS. 

* Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
<center>![](/assets/images/USB_Boot_Order_Delta.jpg)</center>

* Navigate to the "Save & Exit" tab and select "Save Changes & Exit".

The LattePanda will restart. And later you will enter the installation GUI.

The green progress bar on the left will slowly increasing. It will take some minutes. Please wait patiently. This process is full-automatic. You don't need any operations.

When the progress bar is full, please unplug the USB flash drive immediately. The LattePanda will restart automatically.  

After the restarting, the windows 10 will installing automatically. You don't need any operations. After some minutes,  the installation will be finished. 

Then enjoy it!





## Ubuntu

<center>![](/assets/images/Ubuntu_Logo.jpg)</center>

### Bootable Drive

* eMMC
* M.2 M-key NVMe SSD 

!!! tips 
    This tutorial is for the LattePanda Delta and Alpha. If you are using the 1st edition LattePanda, please refer to the 1st edition documents.

### What you need

* 1 x Blank USB Flash Drive (8 GB or larger)
* [Ubuntu 16.04 LTS image](http://releases.ubuntu.com/releases/16.04/) (64 bit Desktop image is recommended)

### Installation Steps

* Download the Ubuntu 16.04 LTS image.
* Create a USB installation media for Ubuntu. We recommended 'Rufus' for creating installation media. You can download it [here](https://rufus.akeo.ie/).  
* Choose your USB flash drive, and load the ISO file, the GUI of Rufus will be looked like the picture shown as below. Click the start button to burn the ISO file into the USB flash drive.
<center>![](/assets/images/rufus.jpg)</center>
* If you are using the LattePanda to create the USB installation media, restart the LattePanda. Otherwise, insert your USB drive into the LattePanda and turn it on. 
* Press 'Esc' continously to enter BIOS. 
* Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
<center>![](/assets/images/USB_Boot_Order_Delta.jpg)</center>

* Navigate to the "Save & Exit" tab and select "Save Changes & Exit".

The LattePanda will restart. Later, you will enter the installation GUI. The following picture should appear.

<center>![](https://i.imgur.com/13Mxl3A.jpg?1)</center>

There will be two options:

- Try Ubuntu without installing
- Install Ubuntu

Both options should work, but in this tutorial we choose 'Try Ubuntu without installing' option. Then the files will be loading. After a while, the following picture should appear. 

!!!note
    During this process the screen may go black, please be patient. Do not do anything until your LattePanda displays the following screen.

<center>![](/assets/images/ubuntu_desktop_install.jpg)</center>

This is the Ubuntu Desktop. Then double-click the icon on the desktop whose name is 'Install Ubuntu 16.04.6 LTS'. After the double-click, the installation will begin. A screen like the picture below will 
appear.

<center>![](https://i.imgur.com/0iKIU8d.jpg?1)</center>

Choose your default language and continue. 

<center>![](https://i.imgur.com/fH6F6er.jpg?1)</center>

Check the box to install third-party software, and then continue. This will ensure the common plugins are installed so everything can run smoothly. 

<center>![](https://i.imgur.com/ZBEtaik.jpg?1)</center>

Choose the best option for you. The options may look slightly different on your screen, but normally the third option (Erase disk and install Ubuntu) would be the most appropriate. There will be a small window to confirm that changes can be made to your disk. Please click continue.

<center>![](https://i.imgur.com/KqIAQee.jpg?1)</center>

Choose your time zone and click continue to proceed.

<center>![](https://i.imgur.com/LVEID2G.jpg?1)</center>

Select your keyboard layout. If you're unsure of what it is, you can use the detect keyboard layout option. Follow the instructions on screen and it should be relatively simple. Click continue.

<center>![](https://i.imgur.com/Fl0Qhxo.jpg?2)</center>

Fill out your details to continue. 

Please be patient and wait for the installation to complete. Then you will be asked to restart in order to complete installation.

<center>![](https://i.imgur.com/IpbGwmo.jpg?1)</center>


Wait for your LattePanda to restart and boot the Ubuntu, then enter your password to login. Your Ubuntu 16.04 LTS should be fully functional on your LattePanda. Enjoy it!