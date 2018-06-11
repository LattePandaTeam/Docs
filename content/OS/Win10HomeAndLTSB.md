# Introduction

In this section of the guide, you will know how to re-install LattePanda Operating system. We both provide Windows and Linux. Feel free to download the system you want.
It's a simple and useful solution for the following situation:

- You can't startup your Windows system properly.
- Windows system crashes.
- You need to recover the default Windows system after installing Android or Linux.

You can also re-install your LattePanda if you just want to re-install it. 



## Windows 10 Home 

### What you need

1 x USB flash Drive (*at* least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)



### Installation Steps:

##### Please follow the steps below to re-install Windows 10 to its "out of the box" state.

1.Download your LattePanda's official Windows 10 image

![z8350 mark](http://www.lattepanda.com/wp-content/uploads/2017/02/8350-stick.png)

[x86 version for z8300 2GB+32GB](https://drive.google.com/file/d/0B5YJ8UIGswVqeXFsbnRnWi1xXzg/view)

[x64 version for z8300 4GB+64GB](https://drive.google.com/file/d/0B5YJ8UIGswVqSm5qWF91MG1NWnc/view)

[x86 version for **CR110** z8350 2GB+32GB](https://drive.google.com/file/d/0BzUYTecbiooHdVhHbFVZak4xREk/view)

[x64 version for **CR110** z8350 4GB+64GB](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view)

[x64 version for all **CR200** z8350  (2GB+32GB and 4GB+64GB)](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view)

Tips：Please check your board version carefully !

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

1.Download the [LattePanda Win10 Enterprise LTSB Image](http://bit.ly/2EC7GRi).

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




##**Update Windows**

If you want to update to the latest version of Windows 10, please follow the steps below.

1. [Download the Update Assistant here.](https://www.microsoft.com/en-us/software-download/windows10) To get started, click **Update now**.
2. Run the Update Assistant.
3. Wait for update. (This will take a will, you can keep working.)
4. When the update is done, delete the Windows.old folder in C:/ . ([Click here to see how to delete Windows.old folder](http://www.lattepanda.com/topic-f6t7136.html))

![](https://i.imgur.com/ClxdfZw.png)

**Note:** The latest Version of Windows 10 Enterprise LTSB is 1607.



## **Ubuntu 16.04 LTS**

After tested the beta Linux OS for a month with our forum members, we collected the some problems that our forum members meet. Now, we published the newest BIOS to fix bug. The following topic will show you the official Ubuntu installation tutorial. If you still have any questions when using Linux on LattePanda, [feel free to post your question here](https://www.lattepanda.com/topic-f16t8363.html), we are always ready to help you!

**Note**: 

1.This BIOS is only for all **CR200 z8350**. Find your sticky paper on LattePanda board to check the version.

![Refresh BIOS successfully.jpg](https://i.imgur.com/w1Ys5eG.png)

2.Backup your data files if you need before installation.

3.It takes about 15-20 mins for complete installation.

### What you need

1. USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)
2. [Download the newest BIOS here](https://github.com/LattePandaTeam/LattePanda-Win10-Software/tree/master/Bios/LattePanda%20V1.2%20for%20CR200%20Z8350%20only/BIOS%20for%20Ubuntu) (This BIOS is only for all **CR200 z8350**.)
3. [Download image here](http://bit.ly/2JcDtiQ)


### Installation Steps

#### Refresh BIOS

1. <u>**Check the verison of your LattePanda! This BIOS is only for CR200 z8350!**</u> 

2. Format your USB flash disk to FAT32

3. Copy [BIOS files](https://github.com/LattePandaTeam/LattePanda-Win10-Software/tree/master/Bios/LattePanda%20V1.2%20for%20CR200%20Z8350%20only/BIOS%20for%20Ubuntu) directly to root of the USB flash disk

4. Plug the USB flash disk in USB host

5. Plugin the MicroUSB cable and power on the system

6. Wait the refreshing the BIOS automatically until returning "fs1:\>"![Refresh BIOS successfully.jpg](https://i.imgur.com/L8j7lD3.jpg)

7. Unplug the USB flash disk!

8. Restart the system via pressing the reset button or "Ctrl+Alt+Del". Then finish refreshing.

   **Note:**make sure that remove the USB flash disk before restarting the system!



#### Install Ubuntu

Step 1: [Download the Linux image](http://bit.ly/2JcDtiQ).

Step 2: Create a bootable USB flash drive.

Download Rufus from [https://rufus.akeo.ie/.](https://rufus.akeo.ie/) Choose the Linux image and deploy to the USB flash drive.

Note: **On Mac OS,** try Etcher. - [https://etcher.io/](https://etcher.io/)

Step 3: Plug the USB disk in USB host

Step 4: Power on the LattePanda, the installation GUI will automatically run

Step 5: Select the first option

![IMG_8401(20180330-110514)](https://i.imgur.com/iKV1qZb.jpg)

Step 6: Choose the Language

![IMG_8404(20180330-111333)](https://i.imgur.com/60Tz5nX.jpg)

Step 7:  Choose the way your keyboard is laid out. If you are in North America just click enter. If you are not in North America your keyboard most likely has a different layout than the default chosen by Clonezilla. Choose the one that pertains to your country.

![IMG_8407(20180330-111350)](https://i.imgur.com/4sffpBe.jpg)

Step 8: Choose “Start_Clonezilla“. 

![IMG_8409(20180330-111440)](https://i.imgur.com/hyQRNSb.jpg)

Step 9: Choose "Beginner mode".

![IMG_8411(20180330-111516)](https://i.imgur.com/11y2B43.jpg)

Step 10:  Choose “restoredisk“. 

![IMG_8412(20180330-111627)](https://i.imgur.com/3CGzDKR.jpg)

Step 11: Select image

Step 12: Choose the target disk (default disk)

![IMG_8414(20180330-111707)](https://i.imgur.com/gM0meDL.jpg)

Step 13: Select "Check the image before restoring"

![IMG_8415(20180330-111726)](https://i.imgur.com/qD0CIs1.jpg)

Step 14: Choose the action to perform when everything is finished, it's up to you. In this tutorial, we choose reboot.

![IMG_8417(20180330-111746)](https://i.imgur.com/UcDS3gU.jpg)

Step 15: Finally, Clonezilla will ask you twice if you would like to start the process. If you are sure the destination drive is empty, choose yes to start the process.

![IMG_8422(20180330-111133)](https://i.imgur.com/rWVkog7.jpg)

Step 16: The system will reboot after installation successfully. Notice to remove the USB storage following the installation guide.

Step 17: For first time login, please check the password below: 

​	Login account: admin

​	Password: admin

Step 18: Hands-on Ubuntu on LattePanda.




### Important NOTES

1. Recommended to config the display first before using. Please close MIPI output if you don't have LattePanda official IPS screen to avoid display the app window via MIPI video output instead of HDMI output

2. Recommended to allow and update latest ubuntu source code via ubuntu updates first

3. Modify hosts file. Check the details info below:

   - That /etc/hosts has an entry for localhost. It should have something like:

     127.0.0.1    localhost127.0.1.1    admin

4. Please share your feedback or further requirement at [www.lattepanda.com/forum](file:///C:/Users/admin/AppData/Local/Temp/Rar$EXa0.884/www.lattepanda.com/forum)

Enjoy tinkering!​
