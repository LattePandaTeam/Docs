# Introduction

In this section of the guide, you will learn how to install different operating systems, like Linux Ubuntu, Windows 10, and Enterprise, on the LattePanda, and even learn about some contributed materials from our LattePanda community. Feel free to download any suitable operating system that you would like to use. And, as always, feel free to post any of your questions on our forum.


## Re-install Windows 10 Home 

As LattePanda already comes with Windows pre-installed, it's recommended to re-install this operating system if any of the following circumstances occur:

- You cannot start up your Windows system properly.
- The Windows system crashes.
- You need to recover the default Windows system after installing Android or Linux.
- You lost some drivers somehow after tinkering with some of the hardware.

You can also re-install the original OS (operating system) that your LattePanda came with if you just want to re-install that specific OS. 

### Hardware Required

1 x USB Flash Drive (*at least* 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)


### Steps:

**Following this tutorial will help you to recover your system back to the factory default settings. So, this means that a backup of your data and applications is recommended before performing the following steps below.**

1. Check your hardware version!
![z8350 mark](http://www.lattepanda.com/wp-content/uploads/2017/02/8350-stick.png)

2. Choose and download the RIGHT LattePanda's official Windows 10 disc image file for your device which matches your LattePanda model.

    * [x86 version for z8300 2GB+32GB](https://drive.google.com/file/d/0B5YJ8UIGswVqeXFsbnRnWi1xXzg/view)

    * [x64 version for z8300 4GB+64GB](https://drive.google.com/file/d/0B5YJ8UIGswVqSm5qWF91MG1NWnc/view)

    * [x86 version for **CR110** z8350 2GB+32GB](https://drive.google.com/file/d/0BzUYTecbiooHdVhHbFVZak4xREk/view)

    * [x64 version for **CR110** z8350 4GB+64GB](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view)

    * [x64 version for all **CR200** z8350  (2GB+32GB and 4GB+64GB)](https://www.dropbox.com/s/85rtj34atn0p99v/LattePanda%20v1.1%204G%20x64%20image.zip?dl=0)

!!! Notes
    Please make sure that you download the right disc image file for your SBC (single board computer)! The recovery process takes lots of time, so it is advised that you check which OS's are compatible before you attempt installing it onto your LattePanda.

1. Format your USB disk to FAT32 and change the drive name to "WINPE"

2. Unzip and extract the zip file and place the disc image file to the root directory of your USB flash drive

3. Plug in the USB drive into the USB host port

4. Power on the LattePanda

5. The system will install the image automatically. Just wait until the recovery is finished. **Please note:** Your USB disk must be formatted to FAT32 and labeled "WINPE" in order for this to work

6. Unplug the USB disk. Reboot and enjoy.



## Windows 10 Enterprise for Commercial

We highly recommended Windows Enterprise OS for commercial applications! The activated Windows 10 4G LattePanda comes with Enterprise OS pre-installed and ready to use. 

This tutorial is provided by one of our kind community members. We are really appreciative of his help, and we have attached the [link to his original post](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=1388). We believe it is useful to all people--whether you are making a small business model or a large industrial innovation based on LattePanda. We'll continue to share any and all great ideas with you here to help you build and formulate new innovative business ideas. 

If you have any other questions about installing a Windows Enterprise system or how to activate Windows with the activation key on your SBC, please post them in the forum thread above! Our support team will help you to our utmost.

!!! Note
    If you need Windows 10 Enterprise license for matters regarding mass production, you can contact the LattePanda Business Support team via  our email (lattepanda@outlook.com).

### Hardware required

1 x USB flash Drive (*at least* 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)


### Steps

1. Download the [LattePanda Win10 Enterprise LTSB Disc Image File](http://bit.ly/EnterpriseOsForLP).

![5bkNJQf.png](https://i.imgur.com/Z0NOhLU.png)

2. Place all of the files into the root directory of your USB flash drive. (You need to set your USB flash disk to be a bootable device. You can see the tutorial [here](https://docs.microsoft.com/en-us/windows-server-essentials/install/create-a-bootable-usb-flash-drive).)

3. Reboot the LattePanda, and then press 'Esc' button continuously to enter BIOS. Next, change the "Boot Option Priorities" to "Boot from USB Flash Disk."

4. Save & Reboot.

5. Wait for installation.

6. Activate Your LattePanda.

The activation code has been already placed inside the box that your LattePanda SBC came in. To view it, please take it out and search for the corresponding code that is for activating your Windows OS.

![](https://i.imgur.com/UyYtL8x.png)

There are 6 steps to activating your LattePanda:

- Make sure your LattePanda has an active internet connection via WiFi or Ethernet
- Right click on the Windows button and select **System**
- Click **Activate Windows**
- Click **Change Product Key**
- Enter the product key number
- Click **Next**


## Upgrade Windows

If you want to update to the latest version of Windows 10, please follow the steps below.

1. [Download the Update Assistant here.](https://www.microsoft.com/en-us/software-download/windows10) To get started, click **Update now**.
2. Run the Update Assistant.
3. Wait for updates to complete. (This will take some time, so you can continue working in the meantime as your computer finishes updating in the background.)
4. When the update is done, delete the Windows.old folder in C:/ . ([Click here to see how to delete Windows.old folder](http://www.lattepanda.com/topic-f6t7136.html))

![](https://i.imgur.com/ClxdfZw.png)

!!! Note 
    The latest version of Windows 10 Enterprise LTSB is 1607.



## Linux Ubuntu 16.04 LTS

**Official Supported Version: S70CR200 Version.** See the picture below to find out how to check if you have the proper version of LattePanda. If you have an earlier version of LattePanda, like the CR110 or CR100, you can [refer to the contribution in the Github here to install Linux.](https://github.com/mopplayer/lattepanda-mainline-4.11) 

After testing the beta Linux OS for about a month with our current forum members, we assembled a list of common problems that our forum members face. Most of the bugs are now fixed. The following topics discussed here will guide you through the official Ubuntu installation tutorial. If you still have any questions while using Linux on LattePanda, [feel free to post your questions here](https://www.lattepanda.com/topic-f16t8363.html). We are always ready to help you!

!!! Note
    
    1. This OS is for all **CR200 z8350**. Make sure to find the sticky paper on the LattePanda SBC to check which version you have.
    ![Refresh BIOS successfully.jpg](https://i.imgur.com/w1Ys5eG.png)
    2. If you need to, make sure to also back up your data files before installation.



### What You Need

1. USB flash Drive (*at least* 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)
3. [Download disc image file here](https://drive.google.com/file/d/1dSIoytfqzJJCwOrXRoxpgl3WO63gZPhD/view)


### Steps


#### Ubuntu OS Installation

Step 1: [Download the Linux disc image file](https://drive.google.com/file/d/1dSIoytfqzJJCwOrXRoxpgl3WO63gZPhD/view).

Step 2: Create a bootable USB flash drive.

Download Rufus from [https://rufus.akeo.ie/.](https://rufus.akeo.ie/) Then, choose the Linux disc image file and move it to the USB flash drive.

Note: **On Mac OS,** try Etcher. - [https://etcher.io/](https://etcher.io/)

Step 3: Plug in the USB drive into the USB port host

Step 4: Power on the LattePanda (the installation GUI will automatically start up)

Step 5: Select the first option

![IMG_8401(20180330-110514)](https://i.imgur.com/iKV1qZb.jpg)

Step 6: Choose your language

![IMG_8404(20180330-111333)](https://i.imgur.com/60Tz5nX.jpg)

Step 7:  Choose the best keyboard layout for you. If you are in North America, you may find the default layout suiable and can hit the enter key to continue with these settings. If you are not in North America, the keyboard layout that you use could be different than the default layout chosen by Clonezilla. Please choose whichever one pertains to your country.

![IMG_8407(20180330-111350)](https://i.imgur.com/4sffpBe.jpg)

Step 8: Choose “Start_Clonezilla“. 

![IMG_8409(20180330-111440)](https://i.imgur.com/hyQRNSb.jpg)

Step 9: Choose "Beginner mode".

![IMG_8411(20180330-111516)](https://i.imgur.com/11y2B43.jpg)

Step 10:  Choose “restoredisk“. 

![IMG_8412(20180330-111627)](https://i.imgur.com/3CGzDKR.jpg)

Step 11: Select the disc image file

Step 12: Choose the target disk (default disk)

![IMG_8414(20180330-111707)](https://i.imgur.com/gM0meDL.jpg)

Step 13: Select "Check the image before restoring"

![IMG_8415(20180330-111726)](https://i.imgur.com/qD0CIs1.jpg)

Step 14: Choose the action to perform after Clonezilla finishes all installation processes. Any one of these choices are fine, and n this tutorial we have chosen to use the "reboot" option.

![IMG_8417(20180330-111746)](https://i.imgur.com/UcDS3gU.jpg)

Step 15: Finally, Clonezilla will ask you twice if you would like to start these processes. If you are sure that the destination drive is empty and correct, please type in "y" or "yes" into the command prompt to start the process.

![IMG_8422(20180330-111133)](https://i.imgur.com/rWVkog7.jpg)

Step 16: The system will reboot after installation is successful. Please remember to remove the USB storage once you have finished all of the steps of the installation guide.

Step 17: For your first time logging in to the device, please use the account username and password below: 

​	Login account: admin

​	Password: admin

Step 18: Hands-on Ubuntu for LattePanda.

!!! Info

    1. We recommend configuring the display first before you start using the device. Please close MIPI output if you do not have the LattePanda official IPS screen to avoid displaying the app window via MIPI video output and instead connect to your display via the HDMI output.
    
    2. We also recommend allowing the computer to update to the latest version of ubuntu and receive relevant source code via these ubuntu updates.
    
    3. You may modify the host files. Please look at the details below to consider how to change them:
        - That /etc/hosts has an entry for localhost, such as the following:
        127.0.0.1    localhost127.0.1.1    admin
        
    4. Please share your feedback or further requirements at [www.lattepanda.com/forum](https://www.lattepanda.com/forum)
    
    5. Turn off the unknown screen from the display settings in ubuntu and reboot it if you see a trailing and flickering mouse.
    Otherwise, you can try to switch off the 7"inch display by altering the following setting: BIOS->"Chipset"->"North Bridge"->"IGD - LCD Control"->"Force Lid Status"->"Off" 


## OpenSUSE

This tutorial is contributed by J. S. Evans from our LP maker community. 
Please check the link below to find out more!

[OpenSUSE installtion guide](https://cloudyday.tech.blog/2018/08/19/lattepanda/)




Enjoy tinkering! Good luck!
