# Introduction

In this section of the guide, you will know how to install different operating system, like Linux Ubunut, Windows 10 and Enterprise, on LattePanda, even some community contributions. Feel free to download the system you want. And still, response your questions via our forum.


## Re-install Windows 10 Home 

As LattePanda comes with Windows pre-installed, it's recommended to reinstall this system for the following situation:

- You can't startup your Windows system properly.
- Windows system crashes.
- You need to recover the default Windows system after installing Android or Linux.
- Lost some drivers somehow after tinkering hardware part.

You can also re-install your LattePanda if you just want to re-install it. 

### Hardware required

1 x USB flash Drive (*at* least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)


### Steps:

**Following this tutorial will help to recover your system back to the factory default settings. So it means a data or application backup is recommended before doing the steps below.**

1. Check your hardware version!
![z8350 mark](http://www.lattepanda.com/wp-content/uploads/2017/02/8350-stick.png)

2. Choose and download the RIGHT LattePanda's official Windows 10 image, which matchs your hardware spec.

    * [x86 version for z8300 2GB+32GB](https://drive.google.com/file/d/0B5YJ8UIGswVqeXFsbnRnWi1xXzg/view?usp=sharing&resourcekey=0-UcPEVwu0X5KhUPg5e4tVIQ)

    * [x64 version for z8300 4GB+64GB](https://drive.google.com/file/d/0B5YJ8UIGswVqSm5qWF91MG1NWnc/view?usp=sharing&resourcekey=0-rMtO5czLZPmNUUixiqzfTQ)

    * [x86 version for **CR110** z8350 2GB+32GB](https://drive.google.com/file/d/0BzUYTecbiooHdVhHbFVZak4xREk/view?usp=sharing&resourcekey=0-rGktlhr7TKYGXwsdunrfng)

    * [x64 version for **CR110** z8350 4GB+64GB](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view?usp=sharing&resourcekey=0-J4hJnZr5Byw8Soxdp5MEsw)

    * [x64 version for all **CR200** z8350  (2GB+32GB and 4GB+64GB)](https://www.dropbox.com/s/85rtj34atn0p99v/LattePanda%20v1.1%204G%20x64%20image.zip?dl=0)

!!! Notes
    Please make sure that you download the right image for your board! You know, recovering process takes time. You won't like to waste time for downloading and installation again and again. ;)

2. Format your USB disk to FAT32 and change the drive name to "WINPE"

3. Unzip the image to root directory of your USB flash disk

4. Plug the USB disk in USB host

5. Power on the LattePanda

6. The system will install the image automatically. Just wait until the recovery is finished. **Please note:** Your USB disk must be formatted to FAT32 and labelled "WINPE" in order for this to work

7.Unplug the USB disk. Reboot and enjoy.



## Windows 10 Enterprise for Commercial

We highly recommended Windows Enterprise OS for commercial applications! And the Windows 10 activate version 4G LattePanda comes with Enterprise OS pre-installed and activated. 

This tutorial is provided by our kindly community member. We are really appreciate for his help, here's the [link of his original post](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=1388). We also think it is useful for people, who making small business or industry innovation based on LattePanda. So we share it here. 

If you have any other questions about installing a Windows Enterprise system or how to activate Windows key on your board, discuss in forum topic share above! Support team will help you!!

!!! Note
    If you need Windows 10 Enterprise license for your mass production, you can contact with LattePanda business support team via email (lattepanda@outlook.com).

### Hardware required

1 x USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)


### Steps

1. Download the [LattePanda Win10 Enterprise LTSB Image](http://bit.ly/EnterpriseOsForLP).

![5bkNJQf.png](https://i.imgur.com/Z0NOhLU.png)

2. Put all the files to the root directory of your USB flash disk. (You need to set your USB flash disk to be a bootable device. You can see the tutorial [here](https://docs.microsoft.com/en-us/windows-server-essentials/install/create-a-bootable-usb-flash-drive).)

3. Reboot the LattePanda, press 'Esc' continously to enter BIOS. Change the Boot Option Priorities to boot from the USB flash disk.

4. Save & Reboot.

5. Waiting for installation.

6. Activate Your LattePanda

The activation code has been already put in the box. Take it out.

![](https://i.imgur.com/UyYtL8x.png)

There are 6 steps to activate your LattePanda:

- Make sure your LattePanda has an active internet connection via WiFi or Ethernet
- Right click on the Windows button and select **System**
- Click **Acitvate Windows**
- Click **Change Product Key**
- Enter the product key number
- Click **Next**


## Upgrade Windows

If you want to update to the latest version of Windows 10, please follow the steps below.

1. [Download the Update Assistant here.](https://www.microsoft.com/en-us/software-download/windows10) To get started, click **Update now**.
2. Run the Update Assistant.
3. Wait for update. (This will take a will, you can keep working.)
4. When the update is done, delete the Windows.old folder in C:/ . ([Click here to see how to delete Windows.old folder](http://www.lattepanda.com/topic-f6t7136.html))

![](https://i.imgur.com/ClxdfZw.png)

!!! Note 
    The latest Version of Windows 10 Enterprise LTSB is 1607.



## Linux Ubuntu 16.04 LTS

**Official Supported Version: S70CR200 version.** See the picture below to find how to check the version. If you have a earlier version LattePanda like CR110 or CR100, you can [refer to the contribution in the Github here to install Linux.](https://github.com/mopplayer/lattepanda-mainline-4.11) 

After tested the beta Linux OS for a month with our forum members, we collected the some problems that our forum members meet. Most of the BUGs are fixed. The following topic will show you the official Ubuntu installation tutorial. If you still have any questions when using Linux on LattePanda, [feel free to post your question here](https://www.lattepanda.com/topic-f16t8363.html), we are always ready to help you!

!!! Note
    
    1. It's for all **CR200 z8350**. Find your sticky paper on LattePanda board to check the version.
    ![Refresh BIOS successfully.jpg](https://i.imgur.com/w1Ys5eG.png)
    2. Backup your data files if you need before installation.



### What you need

1. USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)
3. [Download image here](https://drive.google.com/file/d/1dSIoytfqzJJCwOrXRoxpgl3WO63gZPhD/view)


### Steps


#### Ubuntu OS Installation

Step 1: [Download the Linux image](https://drive.google.com/file/d/1dSIoytfqzJJCwOrXRoxpgl3WO63gZPhD/view).

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

!!! Info

    1. Recommended to config the display first before using. Please close MIPI output if you don't have LattePanda official IPS screen to avoid display the app window via MIPI video output instead of HDMI output
    
    2. Recommended to allow and update latest ubuntu source code via ubuntu updates first
    
    3. Modify hosts file. Check the details info below:
        - That /etc/hosts has an entry for localhost, like:
        127.0.0.1    localhost127.0.1.1    admin
    4. Please share your feedback or further requirement at [www.lattepanda.com/forum](https://www.lattepanda.com/forum)



## Install Ubuntu Operating System Using Linuxium

### Intro

Courtesy of a site called Linuxium, there are now more Linux operating systems available for the LattePanda and other devices which carry the small-but-powerful Atom or Apollo Intel processors. The ISO disc image files that you can burn onto a live USB using Rufus are called "respun" ISO's, as they are modified to be able to boot up and install properly on these smaller processors. Just remember that the 1st generation of the LattePanda uses an Intel Cherrytrail Atom processor, and the LattePanda Delta has an Intel Celeron N4100 Gemini Lake processor, and the LattePanda Alpha boasts an Intel 8th Gen Core m3-8100y Amber Lake processor. This information will help you learn which operating system ISO file to download and install (or make yourself with the respin process, where all code is available from the site directly) the operating system successfully the first time around.

This guide will teach you how to use these newly-available operating systems to install Ubuntu 20.04 on your LattePanda 1st Generation SBC, and will even go over what you should do if you would like to use a MIPI-DSI display, HDMI display, or both.



### Hardware Requirements

1. LattePanda 1st Generation SBC
2. Your Preferred Display (MIPI-DSI/HDMI)
3. Mouse
4. Keyboard
5. USB (with at least 8GB and nothing on it)

### Steps

**Step 1**: Use any computer that has a working browser to navigate to Linuxium's [website](http://www.linuxium.com.au/) and download the Ubuntu 20.04 ISO disc image file for Atom Processor devices from the ISO page.

![Linuxium](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-1-1.png)

**Step 2**: Now navigate to the Rufus [website](https://rufus.ie/) to download Rufus, which is the program we will use to reformat the clean USB stick.

![Rufus_Download](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-16-1.png)

***Note***: Please remember to take off all contents from the USB, because this process will wipe the USB clean of any preexisting files still on the USB!

**Step 3**: Now insert your USB into your computer and execute the Rufus program, making sure to pick “**Disk or ISO image**” as your selection under “**Boot option**,” and then select the Linuxium Ubuntu 20.04 ISO image that you downloaded earlier and hit "**Start**". Also, please accept any other downloads that the Rufus program determines are necessary to incorporate in order to allow the reformatting process to operate correctly. Once the reformatting process has completed, proceed to the next step.

![Rufus1](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-3-1.png)



![Rufus2](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-4-1.png)

**Step 4**: Now take your reformatted live USB with the ISO disc image file formatted directly to the USB and insert it into your LattePanda 1st Generation SBC before it boots up. Then, boot up your LP SBC and keep hitting the “Esc” button on your keyboard repeatedly to enter the BIOS.

**Step 5**: Under the “**Save & Exit**” Heading, use the arrow keys on the keyboard to select the USB boot option under “**Boot Override**” and hit "Enter" on your keyboard.

![BIOS1](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-11.jpg)

***Note***: At this point, if you boot up the Ubuntu 20.04 operating system as is connected to an HDMI screen, you may see just a blank, purple screen for a while. If this is the case, do not panic, and wait to see if anything finally comes up. If not, check to see if you can change the display by hitting “Win+P” or “Cmd+P” buttons together a couple of times until a screen with an Installation Wizard comes up.

**Step 6**: Click “**Install Ubuntu**” and follow the instructions and enter in your desired settings to install Ubuntu.

![Install_Ubuntu](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-5.png)



![Keyboard_Layout](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-6.png)



![Updates](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-7.png)



![Restart](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-8.png)

If you have a MIPI-DSI display and touch screen, please continue to the *Using MIPI-DSI Display* section. If you have an HDMI display, please skip to the *Using HDMI Display* section. If you would like to use both displays together, it is advised to plug in both displays, follow the steps outlined in the *Using MIPI-DSI Display* section, and when finished click on the "**Display Settings**" option to set up the screens' displays to suit your preferences.



### Using MIPI-DSI Display

**Step 1**: If you are using a MIPI-DSI display and touch screen, test whether the touch screen seems to respond to your finger or stylus (the best way to test this is by swiping your finger slowly to see if it will simulate a mouse making a wide rectangular selection on the desktop). If the touch screen does not seem to respond, do not worry, as it might be easily fixed by trying a couple of things.

**Step 2**: Restart your LattePanda 1st Generation SBC (or force restart it) and boot it up again using the Windows OS.

**Step 3**: Confirm that the touch screen can in fact work using the Windows 10 OS.

***Note***: If the touch screen does not work using the pre-installed Windows 10 OS that came with the LattePanda SBC, then please check the LattePanda community forums to check for how to fix this problem or contact customer service.

**Step 4**: Now restart the computer and boot it up with the Ubuntu OS that you installed.

**Step 5**: If the problem persists, please restart the computer and repeatedly hit the "Esc" button on the computer to enter the computer's BIOS settings.

**Step 6**: Now navigate to the "**Chipset**" tab with the arrow buttons on your keyboard, then navigate to "**North Bridge**" and then hit the "Enter" button on your keyboard.

![North_Bridge](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-15.jpg)

**Step 7**: Now navigate to the "**IGD - LCD Control**" setting and then press the "Enter" button on your keyboard.

![IGD-LCD_Control](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-14.jpg)

**Step 8**: Now hit the "Enter" button on your keyboard at the "**Force Lid Status**" button so that you can change the status of this setting from "**On**" to "**Off**."

![Force_Lid_Status](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-13.jpg)

**Step 9**: Now, navigate out of this setting, and into the "**Save & Exit**" tab and hit the "Enter" button on your keyboard at the "**Save Changes and Reset**" option.

**Step 10**: Please repeat steps 8-10.

**Step 11**: Go ahead and try out your touch screen. Now, it should work!



### Using HDMI Display

**Step 1**: If you are using an HDMI display, then go ahead and boot up the ubuntu operating system that has now been installed onto your LattePanda SBC via the BIOS page.

![BIOS2](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-12.jpg)

**Step 2**: When you first start up the Ubuntu OS, you will be greeted by a GRUB menu, which in many ways is similar to the Windows' BIOS menu. At this point, you will probably want to edit the GRUB files before the system boots, or else you might just be greeted by a blank screen. Hit the "E" key on your keyboard and then proceed onto the next step.

***Note***: The reason you will likely see a blank screen when booting up the Ubuntu OS as is has to do with the setup of the LP SBC itself. It is automatically set up to detect any display through the MIPI-DSI port first before it displays via the HDMI port, making any display shown through the HDMI port automatically the second display (even if there is no other display connected to the LP SBC). You can try to use "Win + P" or "Cmd + P" on your keyboard to switch displays or go into the BIOS settings before booting up the computer and change the "**Force Lid Status**" to "**Off**," but they are not as proven to work as the provided method which will be discussed in the following steps.

**Step 3**: You have now entered the "**Edit GRUB File**" window. Here, you will need to find and navigate your cursor to the words "**quiet splash**" in this file.

![GRUB1](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-9-2.jpg)

**Step 4**: Now, please type in the word "**nomodeset**" (no spaces) in front of the words "**quiet splash**." Then, please press the "F10" button on your keyboard to save the changes and boot up the computer using these new GRUB file settings.

![GRUB2](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-10-2.jpg)

**Step 5**: Now you should see everything as it should be on your screen and be able to boot up your Ubuntu OS normally via your HDMI display! However, this setup is temporary, and you may be greeted by a blank screen again when you boot up the computer normally next time. To allow the "**nomodeset**" change to be applied for future iterations of booting up the Ubuntu OS, enter into the Ubuntu OS's terminal and enter the following command:

```
sudo gedit /etc/default/grub
```

which will allow you to open the gnome desktop environment's default text editor for editing the grub file once more.

**Step 6**: Now, you should be able to open up the text editor and find the words "**quiet splash**" just as you had done in the previous steps. Once more, add the word "**nomodeset**" in front of these words, and then hit the "**Save**" button in the top right of the window and exit the window.

![gedit](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-24-1.jpg)

**Step 7**: Now, please go back to the terminal and update the grub files with this newly-saved change by entering in the follow change:

```
sudo update-grub
```

Now, you are done, and all subsequent times of booting up Ubuntu should result in having the primary display through your HDMI display!



## Install MobaXterm on Windows Computer

There may be times where you will need to remotely access the kernel of your Ubuntu OS on your LattePanda, especially if you run into any problems where you cannot seem to do anything on your LattePanda computer that has already been booted up using the Ubuntu OS.

Enter **MobaXterm**, which is a program that can allow you to remotely use features like your Ubuntu OS's kernel via an SSH connection. This guide will teach you how to first set up an Open SSH connection on your Ubuntu OS, and then set up such a connection and have access to your Ubuntu OS's kernel on a Windows computer running this program.



### Hardware Requirements

1. LattePanda 1st Generation SBC with a Linux Distribution OS installed
2. Display of your choice
3. Keyboard (and Mouse)
4. Other computer running Windows OS

### Steps

**Step 1**: Open up a terminal in your Ubuntu OS (using a mouse and keyboard) and type in the command:

```
sudo apt install openssh-server
```

to install an Open SSH server on your LattePanda SBC.

***Note***: After it completes installing on your computer, you can run the commands:

```
sudo systemctl status ssh
```

to see if it is working properly. If it appears to not be working or connecting, then please run the commands:

```
sudo systemctl enable ssh

sudo systemctl start ssh
```

to enable the Open SSH server connection. Once finished, you can hit "Ctrl+C" on your computer and then proceed onto the next step.

**Step 2**: Then, run the commands:

```
sudo ufw allow ssh

sudo ufw enable

sudo ufw status
```

to both allow the default port 22 to be open to SSH connections and to check the status of the newly-opened port.

**Step 3**: Now, to find your "**Remote Hostname**" IP address that we will use later in this guide, run the command:

```
ifconfig
```

and look for the wlan0's "**inet**" IP address.

![inet](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-23-1.png)

If your terminal cannot run this command, then please install it using the command:

```
sudo apt install net-tools
```

and then run this command again.

Your LattePanda is now ready to be remotely accessed via an Open SSH connection.

**Step 4**: Please use another computer that runs Windows OS to download and install the *portable version* of [MobaXterm](https://mobaxterm.mobatek.net/) in order to remotely access your Ubuntu OS's kernel.

![MobaXterm](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-22-1.png)

**Step 5**: Once you have downloaded and installed this program, go ahead and run it and click the "**Session**" button at the top left.

![Session](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-17-1.png)

**Step 6**: In the "**Session settings**" window, please click the "**SSH**" button in the top left.

![SSH](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-18-1.png)

**Step 7**: In the Basic SSH settings, please add the "**Remote host**" IP address of your LattePanda running the Ubuntu 20.04 OS, and then check the "**Specify username**" radio button so that you can enter the ***username that you used when setting up your Ubuntu 20.04 OS*** (in this example, the username is "John"). Then, click "**OK**."

![Remote_Host](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-20-1.png)

**Step 8**: Finally, enter the password for your Ubuntu operating system's account that you are trying to log in to. (Please note that it will not appear as you are typing it, similar to if you were to type in your password in the terminal of the Ubuntu OS.)

![password](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-21.png)

**Step 9**: Success! You are done connecting, and will be greeted by a message that will ask you if you would like to store the password safely in the software's database. You can choose to do this optional step and create a new master password for all of these stored passwords that the software can automatically access for each subsequent login, or you can choose to skip this step and try to use the terminal remotely on your Windows system.



## Setting Up Bluetooth

Since the LattePanda's antenna(s) that come with the SBC itself are equipped to handle both WIFI and Bluetooth data transmissions, you may want to set up your Ubuntu OS to accept Bluetooth devices requesting to be paired with the LP SBC.

This guide will go over how to set up the Bluetooth connectivity functions of your Ubuntu OS and a Bluetooth devices manager.



### Hardware Requirements

1. LattePanda SBC with Ubuntu OS
2. LattePanda SBC Wifi & Bluetooth Antenna
3. Display of your choice
4. Mouse & Keyboard (or Touch Screen) (or MobaXterm working on a Windows computer)

### Steps

**Step 1**: In order to get your Bluetooth functions working properly, we will need to install all necessary packages onto the Ubuntu OS. To do this, run the following command in your terminal:

```
sudo apt-get install bluetooth bluez bluez-tools rfkill
```

Once completed, continue onto the next step to confirm that your Bleuetooth device is not blocked.

**Step 2**: Now, please run the command:

```
sudo rfkill list
```

to make sure that your Bluetooth device is not blocked. If yes, then please unblock it by entering the following command:

```
sudo rfkill unblock bluetooth
```

**Step 3**: Make sure that the Bluetooth service is active and running by entering the following command into your terminal:

```
sudo service bluetooth start
```

If all is well, then please continue onto the next step, where we will start to install the device manager which will help you to pair a specific device with your LP SBC.

**Step 4**: To install the blueman package, please run the following command in your terminal:

```
sudo apt-get install blueman
```

and, when the installation is finished, you can go into your applications launcher in your Ubuntu OS and start up the program.

**Step 5**: To search for a Bluetooth device for the LP SBC to pair with, just hit the "**Search**" button in the top left of the window. Once the list appears, go ahead and select the device that you would like to pair with the LP SBC, and then follow the steps as they appear on your screen to complete the pairing of devices.

![search](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-25-1.png)

**Step 6**: Now you are done, and have successfully paired your devices via a Bluetooth connection! To learn more about how to pair devices and how to utilize some of the functions that become available to you via a Bluetooth connection, please visit this [site](https://www.maketecheasier.com/setup-bluetooth-in-linux/).



## Installing Python Browser Program JupyterLab

Now that you have Ubuntu installed onto your LattePanda V1 SBC, let's use the terminal to install JupyterLab, a program which can allow you to seamlessly run python code and a variety of other coding languages right from your browser.



### Steps

**Step 1**: Since your version of Ubuntu OS may not come with Python2 pre-installed, we will need to install it by opening up a terminal and running the command:

```
sudo apt install python2
```

**Step 2**: This installation of python 2 may come without the pip tool. If this is the case, then please install pip onto your LattePanda. You can run the following code in the terminal to start installation immediately:

```
sudo apt install python-pip
```

**Step 3**: Install JupyterLab using a pip install command. You can run the following code in the terminal to start installation immediately:

```
pip install jupyterlab
```

**Step 4**: You're set to run JupyterLab! You can run the following code in the terminal to start up the program immediately:

```
jupyter lab
```

***Note***: Please remember to add a space between "**jupyter**" and "**lab**" in order to run the program, which will appear on your browser.

**Step 5**: Now you can write any python code and run it directly from your browser. It is very fast, and can run multiple operations from its different kernels. Just don't forget to install any modules that you might want to import by going back into the terminal and using the following code:

```
pip install [module name]
```

where "**module name**" is the name of the module that you would like to use. If you have any problems, please view the information page directly on Python's website or this [site](https://pypi.org/) to refer to the correct format that the code must have to install the module properly.



## Installing Arduino IDE

If you want to be able to utilize the Arduino Leonardo ATMega32u4 co-processor and all of the GPIO pins for ultimate connectivity and in order to maximize your use of the LattePanda SBC for your projects, then you'll want to install the Arduino IDE onto this particular version of the Ubuntu operating system now running on your SBC. Let's use the terminal again to install this program.



### Steps

**Step 1**: Install Arduino directly by running this line of code in the terminal:

```
sudo apt-get install arduino
```

***Note***: Once installation is complete, you can now use the terminal to open the Arduino IDE software just by running the following code:

```
sudo arduino
```

or just open up the application in your application manager directly.

In fact, if you were to run the code:

```
arduino
```

in the terminal or open the Arduino IDE regularly, you should be prompted with a message that asks you if you would like to give the Arduino IDE program sudo privileges. Please click "yes," or else the Arduino IDE program will not be able to access the co-processor via the internal USB connection.

However, if you accidentally click "no" or do not have this message come up, don't worry. You may want to be able to run the program without opening the terminal, in which case, you will have to give the Arduino program sudo privileges by making it part of the dialout group. Follow these next few steps if you wish to make the Arduino IDE program part of the OS's dialout group.

**Step 2**: In order to make your Arduino IDE program part of the dialout group, run the following code in the terminal:

```
sudo usermod -a Gdialout $USER
```

***Note***: Please note that this is not a secure and safe operation, as it will also add other possible devices into the dialout group and offer sudo privileges to them, as well.

**Step 3**: Now you can use Arduino! Open the Arduino program with either the code in Step 1 or opening it regularly after using the code in Step 2.
Now, let's configure the Arduino IDE so that we can use it with our LattePanda SBC.

**Step 4**: Go to **Tools** --> **Board**, and then please select "**Arduino Leonardo**"

**Step 5**: Go to **Tools** --> **Port**, and then please select "**ttyACM0**"

**Step 6**: Now you can try it out! You can go to **File** --> **Examples** --> **01. Basics**, and then select "**Blink**" to try out this Arduino sketch. When you open it, press the upload button in the top left of the program, and then you should see the LED located on the ATMega32u4 co-processor on the board itself begin to blink!



## Installing Picture Editing Software GIMP

Given that most software is made with Windows and Mac operating systems in mind, it can be hard to find good substitutes for Linux operating systems. One picture editing software that is an adequate substitute for great software like Adobe Photoshop and is available for Linux Distribution operating systems is **GIMP**.

This guide will teach you how to install GIMP onto your Ubuntu OS and start using this software for your images and creative artistry.



### Hardware Requirements

1. LattePanda SBC with Ubuntu OS installed
2. Display of your choice
3. Keyboard (and Mouse)

### Steps

**Step 1**: In order to install GIMP software, you will first have to install "**flatpak**." So, please open up the Ubuntu terminal  (with your mouse or with "Ctrl + Alt + T") and enter the following command:

```
sudo apt install flatpak
```

**Step 2**: Now that you have flatpak installed, you can now begin to run some flatpak commands. Now, from your terminal enter in the next command:

```
flatpak install http://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
```

This will download and install all necessary software and additional packages that the software will need to run correctly. This may take a while, so you may want to find something to do while your terminal finishes the operations necessary to download and install these packages.

**Step 3**: You now have the software downloaded and installed onto your LattePanda SBC! Sometimes, the icon may not appear in the **Application Manager** dock, in which case you may have to manually boot it from the terminal using this code:

```
flatpak run org.gimp.GIMP//stable
```

Please refer to GIMP's official website if you would like to learn how to fix the problem of not seeing the GIMP icon appear in your Application Manager.



## Installing Media Software VLC

While there are many versions of software which can manage and play through your many media files stored on your device, almost none of them match the versatility of **VLC**, which is usually not used to manage your media as it is used to open a variety of different formats of media and has very few media file types that it cannot open.

Given this, we would like to teach you how to install VLC onto your LattePanda Ubuntu OS in this next guide.



### Hardware Requirements

1. LattePanda SBC with Ubuntu OS installed
2. Display of your choice
3. Keyboard (and Mouse)

### Steps

**Step 1**: Open up a terminal (with your mouse or with "Ctrl + Alt + T") on your Ubuntu OS and enter the following command:

```
sudo apt install vlc
```

**Step 2**: This will install the vlc software program onto your LP SBC, but for complete and full installation of the program, please enter this following command:

```
sudo apt install vlc-plugin-access-extra libbluray-bdj libdvdcss2
```

**Step 3**: Now you've downloaded and installed the complete version of VLC! Now you can run the program by either entering in the following command in your terminal:

```
vlc
```

or opening the program from your Application Manager, or by right-clicking on one of your video or sound files and choosing to open the file with VLC.



## Update Your Kernel

It is advised to update your kernel of your Ubuntu software if you want to optimize the performance of your computer. Additionally, the regular steps taken to update your kernel will also ensure that many other functions of your Ubuntu OS are updated and upgraded, which will enhance the performance of your computer and ensure that your computer installs many necessary command tools that will help you become an experienced Linux user in no time!

This guide will teach you the last two commands that will be important to remember in order to update and upgrade your Linux kernel for your Ubuntu operating system.

***Note***: If you have installed **Ubuntu 20.04** onto your LattePanda SBC, then you do not need to update your kernel, as this operating system already comes with the latest updates and upgrades to its kernel.



### Hardware Requirements

1. LattePanda SBC with Ubuntu 18.04 or earlier installed
2. Display of your choice
3. Keyboard (and Mouse)

### Steps

**Step 1**: First, open up a terminal  (with your mouse or with "Ctrl + Alt + T") and then enter the following command:

```
sudo apt-get update && sudo apt-get dist-upgrade && apt-get -f install
```

This will ensure that some other packages can download successfully and will not throw any errors. The first part of this command should have successfully updated most everything you should regularly update when you are starting to use the operating system, but we are still not finished with the upgrading process.

**Step 2**: Now, let's upgrade the Ubuntu OS. To do so, simply enter the following command:

```
sudo apt-get upgrade
```

Now you have successfully updated and upgraded your kernel to the latest version. When you navigate to the "/usr/src" folder of your Ubuntu OS, you will see that the old versions of your kernel still remain as a backup should there be any problems using the newer updated versions of the kernel.

***Note***: If you are feeling really adventurous and have a good mastery on how to install patches to your kernel, you can also use GitHub user GraySky2's [repository](https://github.com/graysky2/kernel_gcc_patch) to further optimize your Ubuntu OS's kernel. You'll want to install "**Git**" onto your Ubuntu OS using the command:

```
sudo apt-get install git
```

in your terminal. Then, you'll want to clone the Git repository into your Linux kernel's source code, which will require you to first change the directory to where all of the source code sits, and then clone GraySky2's repository using the proceeding command:

```
cd <"Linux Source Code Path"> 
# Substitute "Linux Source Code" for the path name of the
#Linux kernel's source code

git clone https://github.com/graysky2/kernel_gcc_patch
```

From here, you'll want to make sure you install the correct ".patch" file that will lend you accessibility to a kernel patch that is optimized for ***your particular processor***. This means, if you are using the LattePanda 1st Gen SBC, then you will want to install the patch that gives you access to the Silvermont's "Airmont" processor patch. For more details, please refer to the readme on GraySky2's GitHub repository.

DFRobot user pATAq has also graciously given some advice on how to install this patch, advising that you enter these commands in order to successfully install the patch and enter into the window which can help you select the particular updated kernel you would need which complements your particular processor:

```
sudo apt-get install gcc make libncurses5-dev libssl-dev bison flex libelf-dev patch -Np1 -i /path/to/patch

make menuconfig
```



## Fixing Screen Resolution

There may be sometimes where the LattePanda SBC's newly installed Ubuntu operating system is unable to properly detect and use the maximum resolution that your display can offer. In this event, this guide will teach you how to fix this problem, but you will need to know the maximum resolution of your display in order to proceed.



### Hardware Requirements

1. LattePanda SBC with Ubuntu OS installed
2. Display (with resolution dimensions in hand)
3. Mouse and Keyboard

### Steps

**Step 1**: In order to allow the LattePanda's Ubuntu OS to access a particular resolution size other than the default, we will have to edit the GRUB file again, which we can do by entering the command:

```
sudo gedit /etc/default/grub
```

in the terminal. This will now open the GNOME text editor, which will allow us to proceed on to the next step.

**Step 2**: Please scan through the file until you find the line that contains:

```
#GRUB_GFXMODE=640x480
```

![gedit2](https://www.lattepanda.com/wp-content/uploads/2020/08/ubuntu-24-2.jpg)

Please change this by first deleting the pound sign in front of this line (which is used to "comment the line out", so deleting this pound sign is **necessary** in order to have anything written in the line take effect). Then, enter in the resolution dimensions of your screen after the equals sign. In this example, we are using a HDMI screen with a resolution of 1920x1080, so we will change this line so that it will read:

```
GRUB_GFXMODE=1920x1080
```

**Step 3**: You're almost done! Now, save the changes that you just made by clicking on the "**Save**" button at the top right of the text editor, and close out of the text editor window. Now, please go back to the terminal and enter in the command:

```
sudo update-grub
```

**Step 4**: Now reboot the computer. Success! Your Ubuntu OS will default to the dimension size listed in the line that you changed and updated in the GRUB boot file.



## OpenSUSE

This tutorial is contributed by J. S. Evans from community. 
Please check the link below to find details!

[OpenSUSE installtion guide](https://cloudyday.tech.blog/2018/08/19/lattepanda/)




Enjoy tinkering!​ Good luck!
