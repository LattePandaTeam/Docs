# Operating Systems

This document will show how to install an operating systems compatible with LattePanda 3 Delta. It will also cover the acceptable bootup media, as well as instructions, resources for installing operating systems and other special considerations.

## Overview

The LattePanda 3 Delta is **a development device that supports two different operating systems.**

1. Windows 10, Windows 11
2. Linux Ubuntu, or other Linux versions

!!! Tip
    Please feel free to contribute or request new content via our [Official Docs Repository](https://github.com/LattePandaTeam/Docs)

!!! Warning
    Please back up your important files or data before OS installation.



## Windows System

<center>![](/assets/images/Windows_10_11_logo.jpg)</center>

The following contents will take the Windows OS installation as an example to demonstrate. 

* The installation steps for Windows 10 and Windows 11 are same. 

* We will use the official system image file(provided by LattePanda team) with all hardware drivers pre-installed and ready to use, bringing you a fast and ultimate experience.

* The system will be installed on the eMMC by default.

  <br>

* How to install the official system image to the SSD?

  1.Insert your SSD into the LattePanda, then remove all other storage.<br>

  2.Enter into the BIOS setup to disable the onboard eMMC. Then save the change.<br> 

   <center> ![](/assets/images/DisableEMMC_3Delta.gif)</center>

  3.Restart the LattePanda. Use the following installation steps to install the system image.<br>

### What You Will Need

* Empty USB flash drive (8 GB or larger)
* OS Disc Image File for the LattePanda 3 Delta: Download from [Dropbox Link](https://www.dropbox.com/sh/8xxjl13xf4ocsvi/AAAOu-RaR_1SulZGJpq1InwVa?dl=0) or [Google Drive Link](https://drive.google.com/drive/folders/1-m6dQCReMQ_iV0Kqk87u9775eWJYzAgd?usp=sharing)

### Installation Steps

* Download the Windows 10/11 disc image file of LattePanda 3 Delta.

* Format your USB drive into NTFS format.

* Unzip the  Windows 10/11 disc image file. Then copy and paste them to the USB drive. 

   **The files location on the USB flash drive should be as shown below.**

<center>![](/assets/images/file_in_usbdrive.jpg)</center>

* Insert your USB drive into LattePanda, and turn on the LattePanda. (If you created the USB installation media on LattePanda, please restart the LattePanda before OS installation.) 

* Press ‘**F7**’ key continuously to enter into **Bootable Device Selection Menu**. 

* Use the ‘**UP**’ or ‘**Down**’ key to choose the USB bootable device, then press ‘**Enter**’ key.
<center>![](/assets/images/USB_Boot_device_3Delta.jpg)</center>

* It will enter into the OS installation terminal. It should look like the picture below. As it's a fully automatic process, you don't need to do anything. Please wait patiently for 5-8 minutes.

<center>![](/assets/images/OS_Installation_Desktop_3Delta.jpg)</center>

* After 5~8 minutes, the installation will be completed. You will get the notice in the terminal like the picture below. 

  Then shut down the LattePanda. Unplug the USB flash drive.

<center>![](/assets/images/OS_InstallationOK_Desktop_3Delta.jpg)</center>

* Press the power button to turn on the LattePanda. Then it will start the system initialization. After about 3 minutes, it will enter into Windows System desktop.  Now enjoy it!

  


### Windows Activation
If you are using LattePanda 3 Delta activated model, there should be a License Key in the box as shown below.

<center>![](/assets/images/License%20Key.png)</center>

There are 6 steps to activate your LattePanda:

* Scrape the coating off the sticker to obtain the full **Product Key**
* Make sure your LattePanda has an active internet connection via WiFi or Ethernet
* Right click on the Windows button and select **System**
* Click **Activate Windows**
* Click **Change Product Key**
* Enter the product key number
* Click **Next**


## Ubuntu

<center>![](/assets/images/Ubuntu_Logo.jpg)</center>
### Bootable Drive

* eMMC
* M.2 M-key NVMe SSD 

!!! tips 
    This tutorial is for the LattePanda 3 Delta. If you are using other LattePanda models, please refer to the corresponding section.

### What You Will Need

* 1 x Empty USB Flash Drive (8 GB or larger)
* [Ubuntu 22.04 LTS disc image file](http://releases.ubuntu.com/jammy/) (64-bit Desktop disc image file is recommended)

### Installation Steps

* Download the Ubuntu 22.04 LTS image.
* Create a USB installation media for Ubuntu. We recommend using 'Rufus' to create the installation media. You can download it [here](https://rufus.akeo.ie/).  
* Choose your USB flash drive, and load the ISO file. The GUI of Rufus will look like the picture below. Click the start button to burn the ISO file onto the USB flash drive.
<center>![](/assets/images/Rufus%20setup--Ubuntu%2022.04.png)</center>
* Insert your USB drive into LattePanda, and turn on the LattePanda. (If you created the USB installation media on LattePanda, please restart the LattePanda before OS installation.)  
* Press 'Esc' continuously to enter BIOS menu. 
* Navigate to the "Boot" tab and set the USB drive as "Boot Option #1" under "Boot Option Priorities" part.
<center>![](/assets/images/BIOS%20setup.jpg)</center>
* Navigate to the "Save & Exit" tab and select "Save Changes & Exit".

LattePanda will restart. Afterward, you will enter the installation GUI as shown below.

There will be two options:

- Try Ubuntu without installing
- Install Ubuntu

Both options should work, but in this tutorial, we will take the 'Install' option as an example. Then, the files will load. After a while, the following picture should appear. 

!!!note
    During this process, the screen may go black. Please be patient and do not do anything until you see the following screen.

<center>![](/assets/images/Install%20Ubuntu.jpg)</center>
Please double-click the 'Install Ubuntu' icon. After double-clicking, the installation will begin.(as shown below)

<center>![](/assets/images/Install%20Ubuntu-Language%20setup.jpg)</center>
Choose your default language and continue. 

<center>![](/assets/images/Install%20Ubuntu-Wireless%20setup.jpg)</center>
Connect to a WiFi network.

<center>![](/assets/images/Install%20Ubuntu-Wireless%20setup.jpg)</center>
Choose "Normal installation".

<center>![](/assets/images/Install%20Ubuntu-installation%20type%20setup.jpg)</center>
Choose the best option for you. There will be a small window to confirm that changes will be made to your hard disk. Please click continue.

<center>![](/assets/images/Install%20Ubuntu-District%20setup.jpg)</center>
Choose your time zone and click continue to proceed.

<center>![](/assets/images/Install%20Ubuntu-User%20setup.jpg)</center>
Fill out all input fields to continue. 

Please be patient and wait for the installation to complete. Then, you will be asked to restart LattePanda to complete the installation.


Wait for your LattePanda to restart and boot up Ubuntu, then enter your password to log in. Enjoy it!


**Attention:** 

If you choose to install Ubuntu alongside Windows Boot Manager, LattePanda may boot into Windows instead of Ubuntu after restart , or Ubuntu doesn't show in the boot order priorities, please take the following steps:

* Select 'UEFI Hard Disk Drive BBS Priorities'

* Change the device in 'Boot Option #1/2'

    <center>![](/assets/images/harddisk_order_3Delta.gif)</center>


## Android

The rapid advancement of technology in contemporary society has made people increasingly reliant on the internet in their daily lives. With the widespread use of smartphones and tablets, individuals are utilizing mobile devices for internet access more frequently. Consequently, the Android operating system, as one of the most popular mobile operating systems, has become a focal point of public attention.<br>

Given this context, it has become a common technological practice to install the Android x86 system on single board computer (SBC) via virtual machines. By running the Android x86 system on a virtual machine, we can gain a better understanding of the workings of the Android system and easily utilize Android applications on the single-board computers (SBCs). Today, we will be using the Lattepanda 3 Delta as our testing subject and provide a comprehensive guide on the installation process.<br>

In this section, we will show the step to install Android x86 OS on Lattepanda 3 Delta using a virtual machine.<br>

### What You Will Need

* [Android x86 OS Disc Image File](https://sourceforge.net/projects/android-x86/files/Release 9.0/)
* Virtualization Software, such as [VMware](https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/17_0), VirtualBox

### Installation Steps

* **Download the ISO mirror image file for Android x86.**

  You may download the latest version of the mirror image file from the official website of Android x86.Download [android-x86_64-9.0-r2](https://sourceforge.net/projects/android-x86/files/Release%209.0/).

* **Install virtualization software.**

  You may utilize VMware, VirtualBox, or other virtualization software. For this instance, we will be utilizing VMware Player as the virtualization software. Download [VMware Player](https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/17_0).

* **Establish a virtual machine.**

  1.Commence VMware Player and select "Create a new virtual machine"<br>

   <center> ![](/assets/images/android/3DeltaAndroid1.jpg)</center>

  2.After clicking on "Browse" for the installation program disc image file, select the above-mentioned downloaded mirror image file, and then click on Next.<br> 

   <center> ![](/assets/images/android/3DeltaAndroid2.jpg)</center>

  3.Select "Linux" for the operating system, and then choose "Other Linux 5.X Kernel 64-bit" as the version, and finally, click on Next.<br>

   <center> ![](/assets/images/android/3DeltaAndroid3.jpg)</center>

  4.Name the virtual machine and select the physical location for storing the virtual machine, then click on Next.<br>

   <center> ![](/assets/images/android/3DeltaAndroid4.jpg)</center>

  5.Choose a disk size of 8GB, and then split the virtual disk into multiple files before clicking on Next.<br>

   <center> ![](/assets/images/android/3DeltaAndroid5.jpg)</center>

  6.Confirm the virtual machine information and click on "Finish".<br>

   <center> ![](/assets/images/android/3DeltaAndroid6.jpg)</center>

  7.Click on "Play" to start the virtual machine.<br>

   <center> ![](/assets/images/android/3DeltaAndroid7.jpg)</center>

  8.Installing Android onto a virtual machine.<br>

   <center> ![](/assets/images/android/3DeltaAndroid8.jpg)</center>

  9.Press "C" on the keyboard, select "Create/Modify partitions" using the arrow keys, and then click "OK".<br>

   <center> ![](/assets/images/android/3DeltaAndroid9.jpg)</center>

  10.Choose not to use GPT.<br>

   <center> ![](/assets/images/android/3DeltaAndroid10.jpg)</center>

  11.Select "NEW", then "Primary". Confirm the amount of available disk space, and press "Enter".<br>

   <center> ![](/assets/images/android/3DeltaAndroid11.jpg)</center>

  12.Click on "Bootable" and press "Enter", ensuring that the "Bootable" option is present in the Flags.<br>

   <center> ![](/assets/images/android/3DeltaAndroid12.jpg)</center>

  13.Click on "Write" to write the image.<br>

   <center> ![](/assets/images/android/3DeltaAndroid13.jpg)</center>

  14.Manually type "yes" and press "Enter".<br>

   <center> ![](/assets/images/android/3DeltaAndroid14.jpg)</center>

  15.After waiting for the image to be written, select "Quit" and press "Enter".<br>

   <center> ![](/assets/images/android/3DeltaAndroid15.jpg)</center>

  16.Select the hard disk that was just written to, and click "OK" to confirm.<br>

   <center> ![](/assets/images/android/3DeltaAndroid16.jpg)</center>

  17.Select the EXT4 file system, and press "Enter" to confirm.<br>

   <center> ![](/assets/images/android/3DeltaAndroid17.jpg)</center>

  18.Select "Yes" to format the hard disk in EXT4 format.<br>

   <center> ![](/assets/images/android/3DeltaAndroid18.jpg)</center>

  19.Select "Yes" to install the GRUB bootloader..<br>

   <center> ![](/assets/images/android/3DeltaAndroid19.jpg)</center>

  20.Press "C" on the keyboard, select "Create/Modify partitions" using the arrow keys, and then click "OK".<br>

   <center> ![](/assets/images/android/3DeltaAndroid20.jpg)</center>

  21.Select "REBOOT" and then "OK", to complete the installation of Android onto the virtual machine..<br>

   <center> ![](/assets/images/android/3DeltaAndroid21.jpg)</center>

* **Modify the disabled graphics card driver.**

  1.Select the second "debug" mode to enter the system.<br>

  2.Enter "mount -o remount,rw /mnt" to modify the corresponding file's read and write permissions.<br>

  3.Enter "vi /mnt/grub/menu.lst" to edit the corresponding file using the vi editor.<br>

  4.Press "i" to enter the edit mode in the vi editor. Add "nomodeset" after "quiet" to disable the graphics card driver. Then, type ":wq" to save and exit the vi editor.<br>

  5.Click on "Restart" to select and initiate a reboot.<br>

  After completing the above steps, restart the virtual machine and select "Android x86". You can now begin using the Android x86 system.<br>
  
  In summary, the Android x86 virtual machine is a convenient way for users to experience the Android operating system on a Lattepanda. Users only need to follow the above steps to install and use it. It should be noted that Android x86 is designed for PC, not for mobile phones or tablets, so its user interface and operation may be slightly different from the Android system you use on mobile devices. However, by using a virtual machine to install Android x86, we can better understand the operating principles and application development methods of the Android system, thereby better meeting the needs of daily life and work.