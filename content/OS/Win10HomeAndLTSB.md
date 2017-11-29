# Introduction

In this section of the guide, you will know how to re-install LattePanda Operating system. We both provide Windows and Linux. Feel free to download the system you want.
It's a simple and useful solution for the following situation:

- You can't startup your Windows system properly.
- Windows system crashes.
- You need to recover the default Windows system after installing Android or Linux.

You can also re-install your LattePanda if you just want to re-install it. 



## Windows 10 Home 

### What you need

1 x USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)



### Installation Steps:

##### Please follow the steps below to re-install Windows 10 to its "out of the box" state.

1.Download your LattePanda's official Windows 10 image

![z8350 mark](http://www.lattepanda.com/wp-content/uploads/2017/02/8350-stick.png)

[x86 version for z8300 2GB+32GB](https://drive.google.com/file/d/0B5YJ8UIGswVqeXFsbnRnWi1xXzg/view)

[x64 version for z8300 4GB+64GB](https://drive.google.com/file/d/0B5YJ8UIGswVqSm5qWF91MG1NWnc/view)

[x86 version for CR110 z8350 2GB+32GB](https://drive.google.com/file/d/0BzUYTecbiooHdVhHbFVZak4xREk/view)

[x64 version for CR110 z8350 4GB+64GB/ all CR200 z8350](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view)

2.Format your USB disk to FAT32 and change the drive name to "WINPE"

3.Unzip the image to root directory of your USB flash disk

4.Plug the USB disk in USB host

5.Power on the LattePanda

6.The system will install the image automatically. Just wait until the recovery is finished. **Please note:** Your USB disk must be formatted to FAT32 and labelled "WINPE" in order for this to work

7.Unplug the USB disk. Reboot and enjoy.



## Windows 10 Enterprise 

We announced the LattePanda 4G/64GB version with with Enterprise License. The tutorial below is provided by our kindly community member. We are really appreciate for his help, here's the [link of his original post](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=1388). If you have any other questions on installing a Windows Enterprise system or want know how to activate Windows key on your board, discuss in this post! We are always ready to help you!!

### What you need

1 x USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)

### Installation Steps:

1.Download the [LattePanda Win10 Enterprise LTSB Image](https://mega.nz/#!BKQHzCiI!X4ePjyzTmK2moYAb6MlfHbircHjwhzq4k2hN7-EZhmY).

![5bkNJQf.png](http://www.lattepanda.com/forum/download/file.php?id=307&sid=b025d7a9ce00eeb15bd1069c09ad8bd8)

2.Put all the files to the root directory of your USB flash disk. (You need to set your USB flash disk to be a bootable device. You can see the tutorial [here](https://technet.microsoft.com/en-us/library/jj200124%28v=ws.11%29.aspx).)

3.Reboot the LattePanda, press 'Esc' continously to enter BIOS. Change the Boot Option Priorities to boot from the USB flash disk.

4.Save & Reboot.

5.Waiting for installation.

6.Activate Your LattePanda

The activation code has been already put in the box. Take it out.

![](https://i.imgur.com/UyYtL8x.png)

There are 6 steps to activate your LattePanda:

- Make sure your LattePanda has an active internet connection via WiFi or Ethernet
- Right click on the Windows button and select **System**
- Click **Acitvate Windows**
- Click **Change Product Key**
- Enter the product key number
- Click **Next**


## **Ubuntu 16.04 LTS**

This tutorial is also provided by one of our kindly community mumbers. We are really appreciate for his help. Here's the [link of his original post](http://www.lattepanda.com/forum/viewtopic.php?p=4988#p4988). If you have any questions on installing a Linux system , feel free to discuss in this post! We are always ready to help you!!

**Note:** It's only available for LattePanda 4G/64GB. To get WiFi and Bluetooth modules running under Ubuntu, see [this post](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&start=140#p4807).

### What you need

1 x USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)

### Installation Steps:

1. Download [Ubuntu 16.04 LTS](http://releases.ubuntu.com/16.04/ubuntu-16.04.2-desktop-amd64.iso)

2. Burn the iso to a USB drive. You can use our toolpack [here](https://www.dropbox.com/s/22gu489bu9ebe5z/Ubuntu%20WiFi%20Toolpack.rar?dl=0).

3. Insert your USB drive to a free USB port on the LattePanda, and reboot the machine. When the LattePanda boots, you will be greeted by the installation process.

4. Select Install Ubuntu

5. When the system is installed, reboot the LattePanda.

   ​