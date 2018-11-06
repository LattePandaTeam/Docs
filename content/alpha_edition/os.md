# Operation System

## Windows

Follow the steps below to install the Windows 10 system.

![](https://i.imgur.com/2d5RvHo.jpg?2)

### What you need:

1. 1 x USB flash Drive (*at* least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)
2. Download Windows10 image here.

### Installation Steps:

1. Download the Offical Windows 10 image for LattePanda.
2. Put all the files to the root directory of your USB flash disk. (You need to set your USB flash disk to be a bootable device. You can see the tutorial [here](https://technet.microsoft.com/en-us/library/jj200124%28v=ws.11%29.aspx).)
3. Reboot the LattePanda, press 'Esc' continously to enter BIOS. Change the Boot Option Priorities to boot from the USB flash disk.
4. Save & Reboot.
5. Then you will enter the installation GUI.

## **Update Windows**

If you want to update to the latest version of Windows 10, please follow the steps below.

1. [Download the Update Assistant here.](https://www.microsoft.com/en-us/software-download/windows10) To get started, click **Update now**.
2. Run the Update Assistant.
3. Wait for update. (This will take a will, you can keep working.)
4. When the update is done, delete the Windows.old folder in C:/ . ([Click here to see how to delete Windows.old folder](http://www.lattepanda.com/topic-f6t7136.html))

![img](https://i.imgur.com/ClxdfZw.png)

## Ubuntu

![](https://i.imgur.com/ZDly1Ab.jpg)

In this tutorial, you will learn how to install the Ubuntu 16.04 LTS OS on your LattePanda. 

**Note:** This tutorial is aimed at users of LattePanda Delta and Alpha, and if you are using a previous version of LattePanda, please refer to the tutorial [here.](htp://docs.lattepanda.com/content/OS/Win10HomeAndLTSB/) This is for everyone who wants an open-sourced OS and have an alternate OS instead of Windows 10.

### What you need:

1. USB Flash Drive
2. [Download the Ubuntu 16.04 LTS image here.](http://releases.ubuntu.com/releases/16.04/) (I would recommend the Desktop image for 64-bit for your LattePanda. )

###Installation Steps

1.[Download the Ubuntu 16.04 LTS image.](http://releases.ubuntu.com/releases/16.04/)

2.Create a USB installation media. 

Download Rufus from [https://rufus.akeo.ie/.](https://rufus.akeo.ie/) Choose the Ubuntu image and deploy to the USB flash drive.

3.Boot from your USB flash drive. 

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

