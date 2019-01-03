# Operating System

This document will go over the operating systems that are compatible with the LattePanda Alpha. It will also cover acceptable boot media as well as instructions or resources for installing the operating system and special considerations.

## Overview

No doubt! LattePanda Alpha is global **FIRST development device supporting 4 different operation systems.**

1. Windows 10 and other verions
2. Linux and other versions
3. Android for x86 (Phoenix OS)
4. Hackintosh (MacOS) - Conbributed by Community

!!! tips
    Please feel free to contribute or request new content via [Official Docs Repo](https://github.com/LattePandaTeam/Docs)

## Windows

<center>![](/assets/images/Windows_Logo.jpg)</center>

### Bootable Drive

* eMMC
* M.2 M-key NVMe or SATA SSD

### What you will need

* 1 x Blank USB flash drive (8 GB or larger)
* [LattePanda Alpha Windows 10 Image](https://www.dropbox.com/sh/d2d4xoe2nk7n0je/AACdzPN-bdwkwyHxe9KlSsiIa?dl=0).

### Installation Steps

* Download the Windows 10 image for LattePanda Alpha.
* Configure your USB drive to be a bootable drive. Instructions can be found [here](https://technet.microsoft.com/en-us/library/jj200124%28v=ws.11%29.aspx).
* Copy and paste the Windows 10 image contents to the USB drive.
* If you are using the LattePanda to create the USB installation media, restart the LattePanda. Otherwise, insert your USB drive into the LattePanda and turn it on. 
* Press 'Esc' continously to enter BIOS. 
* Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
<center>![](/assets/images/USB_Boot_Order_Alpha.jpg)</center>

* Navigate to the "Save & Exit" tab and select "Save Changes & Reboot".

You will enter the installation GUI.

## Ubuntu

<center>![](/assets/images/Ubuntu_Logo.jpg)</center>

### Bootable Drive

* eMMC
* M.2 M-key NVMe or SATA SSD 

!!! tips 
    This tutorial is for the LattePanda Delta and Alpha. If you are using the 1st edition LattePanda, please refer to the 1st edition documents.

### What you need

* 1 x Blank USB Flash Drive (8 GB or larger)
* [Ubuntu 16.04 LTS image](http://releases.ubuntu.com/releases/16.04/) (64 bit Desktop image is recommended)

### Installation Steps

* Download the Ubuntu 16.04 LTS image.
* Create a USB installation media for Ubuntu. We recommended Rufus for creating installation media. You can download it [here](https://rufus.akeo.ie/).
* Restart the LattePanda. Press 'Esc' continously to enter BIOS. 
* Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
<center>![](/assets/images/USB_Boot_Order_Alpha.jpg)</center>

* Navigate to the "Save & Exit" tab and select "Save Changes & Reboot".

You will enter the installation GUI.

Once your USB is inserted into your LP, turn on your LP. Hold the Esc button on your connected keyboard, and the following screen should show.

<center>![](https://i.imgur.com/FFmGWit.jpg?1)</center>

The BIOS menu should appear. Select the Boot option using the arrow buttons. Choose your USB to become your first Boot Option #1. You can do so like this.

<center>![](https://i.imgur.com/gm6cx0z.jpg)</center>

Make sure to select your USB. Then go to the 'Save and Exit' tab on the top right. Choose the 'Save Changes and Exit' option. Your LP should restart, and it should boot directly from your USB.

5.Install and set up Ubuntu 16.04 LTS on your LP. 

Once your LP restarts, the following page should appear.

<center>![](https://i.imgur.com/13Mxl3A.jpg?1)</center>

There will be two options:

- Try Ubuntu without installing
- Install Ubuntu

Both options should work, but in this tutorial I will install Ubuntu and I recommend you doing so also. 

After that option is selected, the installation will begin. A screen like the picture below will appear, this process might take a while. Please be patient while leaving your LP on for the installation to take place.

<center>![](https://i.imgur.com/7KKOA6H.jpg?1)</center>

Once the installation is finished. A few more setup options for your Ubuntu OS, and it will be ready to use.

!!!note
    During this process the screen may go black, please be patient. Do not do anything until your laptop displays the following screen.

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

Fill out your details to continue. You will be asked to restart your LP in order to complete installation.

<center>![](https://i.imgur.com/IpbGwmo.jpg?1)</center>


Wait for your LP to restart and then enter your password to login. Your Ubuntu 16.04 LTS should be fully functional on your LattePanda. Enjoy!

## Android (Phoenix OS)

The LattePanda Alpha is also capable of using x86 versions of Android. One such version, is Phoenix OS. This version provides a windows desktop like GUI for an android system while also allowing access to the Google Play store.

### Bootable Drive

* eMMC
* M.2 M-key NVMe or SATA SSD 
* USB Drive (Recommend USB 3.0 for best experience)

### What you will need

* [Phoenix OS Installer](http://www.phoenixos.com/download_x86)
* Bootable Partition (With drive letter assigned) at least 4 GB

### Installation Steps

1. Download the Phoenix OS Installer.
2. Launch the installation exe.
3. There are two options: Install and U Install. Select U Install for installing on USB drive. Select Install for installing on eMMC or SSD partition.


## Hackintosh (Mac OS)

Since the LattePanda Alpha shares similar hardware as some Macbooks, it is possible to install Mac OS Mojave on the LattePanda Alpha. In fact, some community members have already done this and posted installation tutorials. One such member, Novaspirit, created a very detailed tutorial video along with some installation files. 

!!! note
    Mac OS is not an officially supported operating system. Some functionality may not work, or may require additional hardware to work. For example, the provided LattePanda Wifi card is not supported. A USB or M.2 E-key Wifi card is required to have Wifi on Mac OS.**

### What you will need

* 1 x Blank USB Flash Drive (8GB or larger)
* Mac OS Mojave Image
* [NovaSpirit support installation files](https://github.com/novaspirit/macpanda/releases)

### Installation Steps

NovaSpirit video tutorial can be found below.
[![Hackintosh LattePanda Alpha](http://img.youtube.com/vi/nrJpwPxoZZ8/0.jpg)](http://www.youtube.com/watch?v=nrJpwPxoZZ8 "Guide: LattePanda Alpha Hackintosh Intel M3-7Y30")

[Community discussions about this topic!](https://www.lattepanda.com/topic-f11t16979p25805.html?hilit=hackintosh#p25805)

## Related Links

* [Drivers and Software](/content/alpha_edition/drivers_and_software/)
