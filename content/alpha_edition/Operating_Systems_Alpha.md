# Operating System - LattePanda Alpha

This document will go over the operating systems that are compatible with the LattePanda Alpha. It will also cover acceptable boot media as well as instructions or resources for installing the operating system and special considerations.

# Windows

![](https://github.com/chrislattepanda/Docs/blob/master/assets/images/Windows_Logo.jpg)

## Bootable Drive
* eMMC
* M.2 M-key NVMe or SATA SSD

## What you will need
* 1 x Blank USB flash drive (8 GB or larger)
* [LattePanda Alpha Windows 10 Image](https://www.dropbox.com/sh/d2d4xoe2nk7n0je/AACdzPN-bdwkwyHxe9KlSsiIa?dl=0).

## Installation Steps

1. Download the Windows 10 image for LattePanda Alpha.
2. Configure your USB drive to be a bootable drive. Instructions can be found [here](https://technet.microsoft.com/en-us/library/jj200124%28v=ws.11%29.aspx).
3. Copy and paste the Windows 10 image contents to the USB drive.
4. If you are using the LattePanda to create the USB installation media, restart the LattePanda. Otherwise, insert your USB drive into the LattePanda and turn it on. 
5. Press 'Esc' continously to enter BIOS. 
6. Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
![](https://github.com/chrislattepanda/Docs/blob/master/assets/images/USB_Boot_Order_Alpha.jpg)
7. Navigate to the "Save & Exit" tab and select "Save Changes & Reboot".

You will enter the installation GUI.

# Ubuntu

![](https://github.com/chrislattepanda/Docs/blob/master/assets/images/Ubuntu_Logo.jpg)

## Bootable Drive
* eMMC
* M.2 M-key NVMe or SATA SSD 

**Note:** This tutorial is for the LattePanda Delta and Alpha. If you are using the 1st edition LattePanda, please refer to the 1st edition documents.

## What you need
* 1 x Blank USB Flash Drive (8 GB or larger)
* [Ubuntu 16.04 LTS image](http://releases.ubuntu.com/releases/16.04/) (64 bit Desktop image is recommended)

## Installation Steps

1. Download the Ubuntu 16.04 LTS image.
2. Create a USB installation media for Ubuntu. We recommended Rufus for creating installation media. You can download it [here](https://rufus.akeo.ie/).
3. Restart the LattePanda. Press 'Esc' continously to enter BIOS. 
4. Navigate to the "Boot" tab and change the "Boot Option Priorities" so that the USB drive is "Boot Option #1".
![](https://github.com/chrislattepanda/Docs/blob/master/assets/images/USB_Boot_Order_Alpha.jpg)
5. Navigate to the "Save & Exit" tab and select "Save Changes & Reboot".

You will enter the installation GUI.

Once your USB is inserted into your LP, turn on your LP. Hold the Esc button on your connected keyboard, and the following screen should show.

![](https://i.imgur.com/FFmGWit.jpg?1)

The BIOS menu should appear. Select the Boot option using the arrow buttons. Choose your USB to become your first Boot Option #1. You can do so like this.

![](https://i.imgur.com/gm6cx0z.jpg)

Make sure to select your USB. Then go to the 'Save and Exit' tab on the top right. Choose the 'Save Changes and Exit' option. Your LP should restart, and it should boot directly from your USB.

5.Install and set up Ubuntu 16.04 LTS on your LP. 

Once your LP restarts, the following page should appear.

![](https://i.imgur.com/13Mxl3A.jpg?1)

There will be two options:

- Try Ubuntu without installing
- Install Ubuntu

Both options should work, but in this tutorial I will install Ubuntu and I recommend you doing so also. 

After that option is selected, the installation will begin. A screen like the picture below will appear, this process might take a while. Please be patient while leaving your LP on for the installation to take place.

![](https://i.imgur.com/7KKOA6H.jpg?1)

Once the installation is finished. A few more setup options for your Ubuntu OS, and it will be ready to use.

**Note:** During this process the screen may go black, please be patient. Do not do anything until your laptop displays the following screen.

![](https://i.imgur.com/0iKIU8d.jpg?1)

Choose your default language and continue. 

![](https://i.imgur.com/fH6F6er.jpg?1)

Check the box to install third-party software, and then continue. This will ensure the common plugins are installed so everything can run smoothly. 

![](https://i.imgur.com/ZBEtaik.jpg?1)

Choose the best option for you. The options may look slightly different on your screen, but normally the third option (Erase disk and install Ubuntu) would be the most appropriate. There will be a small window to confirm that changes can be made to your disk. Please click continue.

![](https://i.imgur.com/KqIAQee.jpg?1)

Choose your time zone and click continue to proceed.

![](https://i.imgur.com/LVEID2G.jpg?1)

Select your keyboard layout. If you're unsure of what it is, you can use the detect keyboard layout option. Follow the instructions on screen and it should be relatively simple. Click continue.

![](https://i.imgur.com/Fl0Qhxo.jpg?2)

Fill out your details to continue. You will be asked to restart your LP in order to complete installation.

![](https://i.imgur.com/IpbGwmo.jpg?1)

Wait for your LP to restart and then enter your password to login. Your Ubuntu 16.04 LTS should be fully functional on your LattePanda. Enjoy!

# Android (Phoenix OS)

The LattePanda Alpha is also capable of using x86 versions of Android. One such version, is Phoenix OS. This version provides a windows desktop like GUI for an android system while also allowing access to the Google Play store.

## Bootable Drive
* eMMC
* M.2 M-key NVMe or SATA SSD 
* USB Drive (Recommend USB 3.0 for best experience)

## What you will need
* [Phoenix OS Installer](http://www.phoenixos.com/download_x86)
* Bootable Partition (With drive letter assigned) at least 4 GB

## Installation Steps
1. Download the Phoenix OS Installer.
2. Launch the installation exe.
3. There are two options: Install and U Install. Select U Install for installing on USB drive. Select Install for installing on eMMC or SSD partition.


# Hackintosh (Mac OS)

Since the LattePanda Alpha shares similar hardware as some Macbooks, it is possible to install Mac OS Mojave on the LattePanda Alpha. In fact, some community members have already done this and posted installation tutorials. One such member, Novaspirit, created a very detailed tutorial video along with some installation files. 

**Note: Mac OS is not an officially supported operating system. Some functionality may not work, or may require additional hardware to work. For example, the provided LattePanda Wifi card is not supported. A USB or M.2 E-key Wifi card is required to have Wifi on Mac OS.**

## What you will need
* 1 x Blank USB Flash Drive (8GB or larger)
* Mac OS Mojave Image
* [NovaSpirit support installation files](https://github.com/novaspirit/macpanda/releases)

## Installation Steps
NovaSpirit video tutorial can be found below.
[![Hackintosh LattePanda Alpha](http://img.youtube.com/vi/nrJpwPxoZZ8/0.jpg)](http://www.youtube.com/watch?v=nrJpwPxoZZ8 "Guide: LattePanda Alpha Hackintosh Intel M3-7Y30")

# Related Links
* [Drivers and Software](Drivers_And_Software_Alpha_LattePanda.md)
