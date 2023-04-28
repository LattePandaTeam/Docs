# Operating Systems

This document provides a comprehensive guide on how to install an operating system that is compatible with LattePanda Sigma. It covers the acceptable bootup media and provides instructions and resources for installing operating systems, as well as special considerations to keep in mind.

## Compatible System List

We've tested the basic functions of various operating systems on LattePanda Sigma and compiled a compatibility table.

| Operating System | Test Version | Compatibility | Note |
| ------- | ------- | :----: | --- |
| Windows 11 | 22H2 | 🟢    |      |
| Windows 10 | 22H2 | 🟢    |      |
| Windows Server 2022 | April 2023 | 🟡 | The NIC driver needs to be manually installed, please see [Installation Tutorial](https://docs.lattepanda.com/content/sigma_edition/Operating_Systems/#windows-server) |
| Ubuntu  | 20.04.6 | 🟢    |      |
| Ubuntu  | 22.04.2 | 🟢    |      |
| Rocky Linux | 9.1 | 🟢    |      |
| Proxmox VE | 7.4  | 🟡    | Due to ack of driver support for the new generation of core graphics card, the GUI can not automatically start, please see [Installation Tutorial](https://docs.lattepanda.com/content/sigma_edition/Operating_Systems/#proxmox-ve) |
| VMware ESXi | 8.0 U1  | 🟡 | Intel CPUs with P-core and E-core are not officially supported, you can install them by adding additional parameters, please see [Installation Tutorial](installation link) |
| TrueNAS CORE | 13.0-U4 | 🟢 |      |
| Android x86 | 9.0-r2 | 🔴 |      |
| ChromeOS Flex | 15117.112.0 | 🔴 | |
| OPNsense | 23.1   | 🟢    |      |

\> [!NOTE] 

>   🟢 Green indicates that the OS can be installed normally. Basic interfaces such as USB, HDMI, Ethernet, PCIe, and SATA can be identified and used without any additional steps; 
>
>   🟡 Yellow indicates that additional installation or setup steps are required before the system can be fully installed and operational; 
>
>   🔴 Red indicates that the OS cannot be installed completely, either due to hardware or software issues.
>
> * The E-core to P-core performance efficiency, Thunderbolt 4 interfaces and the drivers for integrated graphics cards are not included in the compatibility testing, as these can change rapidly with system updates. Additionally, the Thunderbolt 4 interface is difficult to use outside of the Windows desktop system, and therefore was not included in our testing range.

If you discover that an operating system has undergone a significant update and needs to be retested, or if there are other operating systems that you would like us to test, you can either create a new issue in the repository of this document (https://github.com/LattePandaTeam/Docs/issues) or email us at [techsupport@lattepanda.com](mailto:techsupport@lattepanda.com).

!!! Warning
    It is highly recommended to create a backup of your important files or data before proceeding with the installation of an operating system on LattePanda Sigma.

## Windows System

<center>![](/assets/images/Windows_10_11_logo.jpg)</center>

The following contents will take the Windows OS installation as an example to demonstrate. 

\> [!NOTE] 

> * The installation steps for both Windows 10 and Windows 11 are the same. 
> * We will use the official system image file(provided by LattePanda team) with all hardware drivers pre-installed and ready to use, bringing you a fast and ultimate experience.



### What You Will Need

* Empty USB flash drive (16 GB or larger)
* M.2 NVMe SSD(or SATA SSD)
* OS Disc Image File for the LattePanda Sigma: Download from [Dropbox Link](https://www.dropbox.com/s/uitqb23soua6nrp/LP-JX-16-WTADLC1R200-001-D.7z?dl=0)

### Installation Steps

* Insert M.2 NVMe SSD to M.2 M key socket on LattePanda Sigma.

* Download the Windows 11 disc image file of LattePanda Sigma.

* Format your USB drive into NTFS format.

* Unzip the  Windows 11 disc image file. Then copy and paste them to the USB drive. 

   **The files location on the USB flash drive should be as shown below.**
   
   ![USB_Drive_content](https://dfimg.dfrobot.com/nobody/wiki/57419b6de6c15fc9d31d5ef3df3ffae1.png)

* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).

* Press ‘**F7**’ key continuously to enter into **Bootable Device Selection Menu**. 

* Use the ‘**UP**’ or ‘**Down**’ key to choose the USB bootable device, then press ‘**Enter**’ key.

![boot_option_select](https://dfimg.dfrobot.com/nobody/wiki/8de2c88f98e5bef98d4743f003fe70fd.jpg)

* It will enter into the OS installation terminal, which should resemble the image below. As it's a fully automatic process, there's no need to take any action. Please wait patiently for 5-8 minutes.

![WIN_INSTALL_START](https://dfimg.dfrobot.com/nobody/wiki/f7b01ccc95da396d57b9b8886afb5c4f.jpg)

* After 5~8 minutes, the installation will be completed. A notice will appear in the terminal similar to the image below. 

  Then shut down the LattePanda and unplug the USB flash drive.

![WIN_INSTALL_END](https://dfimg.dfrobot.com/nobody/wiki/5c25d35260308061b661e8522b055a8f.jpg)

* Press the power button to turn on the LattePanda and wait for the system initialization process to begin. After approximately three minutes, the device will boot up and bring you to the Windows desktop. Now enjoy it!

  




## Ubuntu

<center>![](/assets/images/Ubuntu_Logo.jpg)</center>

!!! Tips 
    This tutorial is for the Sigma. If you are using other LattePanda models, please refer to the corresponding section.

### What You Will Need

* 1 x Empty USB Flash Drive (8 GB or larger)
* [Ubuntu 22.04 LTS disc image file](http://releases.ubuntu.com/jammy/) (64-bit Desktop disc image file is recommended)

### Installation Steps

* Download the Ubuntu 22.04 LTS image.
* Create a USB installation media for Ubuntu. We recommend using 'Rufus' to create the installation media. You can download it [here](https://rufus.akeo.ie/).  
* Choose your USB flash drive, and load the ISO file. The GUI of Rufus will look like the picture below. Click the start button to burn the ISO file onto the USB flash drive.
<center>![](/assets/images/Rufus%20setup--Ubuntu%2022.04.png)</center>
* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).
* Press ‘**F7**’ key continuously to enter into **Bootable Device Selection Menu**. 

* Use the ‘**UP**’ or ‘**Down**’ key to choose the USB bootable device, then press ‘**Enter**’ key.

![boot_option_select](https://dfimg.dfrobot.com/nobody/wiki/8de2c88f98e5bef98d4743f003fe70fd.jpg)

* Then, you will enter the installation GUI as shown below. In this guide, we will take the **'Try or Install Ubuntu'** option as an example. 

![GUN_GRUB](https://dfimg.dfrobot.com/nobody/wiki/6b35ba0f0b1792ef2a84408027fe72d2.jpg) 

![](https://dfimg.dfrobot.com/nobody/wiki/f33f509b1a071c4156d61feab396d12e.jpg)Please double-click the 'Install Ubuntu' icon. After double-clicking, the installation will begin.(as shown below)

![Ubuntu_keyboard_layout](https://dfimg.dfrobot.com/nobody/wiki/258dea426470e87def39d69f14ff8b3f.jpg)

Choose your default language and continue. 

![Ubuntu_updates_software](https://dfimg.dfrobot.com/nobody/wiki/9ae8e4c6b550b1e4017d30c1d0a73b66.jpg)

Select the installation type that best suits your needs. As our SSD already has Windows installed, we will proceed to install Ubuntu alongside the Windows Boot Manager.

![Ubuntu_installation_type](https://dfimg.dfrobot.com/nobody/wiki/3403c19d1113b93bb895dbee49ca9c67.jpg)

![Ubuntu_installation_type_confirm](https://dfimg.dfrobot.com/nobody/wiki/3ad9f9d92eb7916f284d7237a1b9f05f.jpg)

Confirm the select drive and and that you wish to proceed with writing the previous changes to the disk.

![Ubuntu_drive](https://dfimg.dfrobot.com/nobody/wiki/ae4f051e6b5a8241caf9055c90846e39.jpg)

![Ubuntu_change_to_disk](https://dfimg.dfrobot.com/nobody/wiki/7f3417805861efa5a91f7fbe56220ca4.jpg)

Select your time zone and click "continue" to proceed.

![Ubuntu_time_zone](https://dfimg.dfrobot.com/nobody/wiki/ec8cd7f09f2c1227ee69f13af965d6da.jpg)

Fill out all of the required input fields.

![Ubuntu_user_name](https://dfimg.dfrobot.com/nobody/wiki/e428283ea9a8678838071871c4b2972b.jpg)

Please be patient and wait for the installation to complete. Then, you will be asked to restart LattePanda to complete the installation.

![Ubuntu_install_process](https://dfimg.dfrobot.com/nobody/wiki/7e148bbdd55ff59354a14f29a6a5319d.jpg)

Wait for your LattePanda to restart and boot up Ubuntu, then enter your password to log in. Enjoy it!





## Proxmox VE

![PVE_LOGO](https://dfimg.dfrobot.com/nobody/wiki/f029088f46c3b35be75c25dc55a1ae53.png)

### What You Will Need

* 1 x Empty USB Flash Drive (8 GB or larger)
* [Proxmox VE image file](https://www.proxmox.com/en/downloads/category/iso-images-pve) (Download Proxmox VE 7.4 ISO Installer)

### USB Boot Disk

* Download the Proxmox VE image file(here we use **Proxmox VE 7.4 ISO Installer**).
* Create a USB installation media for Proxmox VE. We recommend using 'Rufus' to create the installation media. You can download it [here](https://rufus.akeo.ie/).  
* Choose your USB flash drive, and load the ISO file. The GUI of Rufus will look like the picture below. Click the start button to burn the ISO file onto the USB flash drive.

![PVE_rufus](https://dfimg.dfrobot.com/nobody/wiki/5e296e06d3d89e71de91f7865498cedf.png)

### Installation Steps

* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).
* Press ‘**F7**’ key continuously to enter into **Bootable Device Selection Menu**. 
* Use the ‘**UP**’ or ‘**Down**’ key to choose the USB bootable device, then press ‘**Enter**’ key and the Proxmox Welcome interface will appear.

![boot_option_select](https://dfimg.dfrobot.com/nobody/wiki/8de2c88f98e5bef98d4743f003fe70fd.jpg)

![Proxmox_GUI](https://dfimg.dfrobot.com/nobody/wiki/2edf2770467188f347fede9fea2b95a7.jpg)

\> [!NOTE] 

> * Please note that Proxmox 7.4-1 does not support the graphics of latest Intel 13th generation processor, which means that the graphical user interface(GUI) may fail to start. However, this issue is expected to be resolved in a future edition of Proxmox. 
> *  If you are able to access the graphical user interface(GUI) directly, you may not need to refer to this tutorial. 

* Select "Install Proxmox VE". Wait a few seconds until the GUI startup failure is displayed. Input **'Xorg -configure'** to manually create a new X11 configuration file.

  ```shell
  Xorg -configure
  ```

![PVE_INSTALL_01](https://dfimg.dfrobot.com/nobody/wiki/c85cc85016c1dfb79c1a562370151aaa.jpg)

- After creating a new configuration file, disable the intel driver in it

  1. Go to editor. 

     `nano xorg.conf.new`


![](https://dfimg.dfrobot.com/nobody/wiki/db6255cf858eb2ed9f4305624be3759f.jpg)

​		2. Search for the phrase **'Driver "intel"'** (you can press Ctrl + W to find it quickly), and replace it with **'Driver "fbdev"'**.

![](https://dfimg.dfrobot.com/nobody/wiki/a458a9acf651326ca9b886f9b5a72e0f.jpg)

​		3. Ctrl+X , save and exit. Press **Y** to save modified buffer.

![](https://dfimg.dfrobot.com/nobody/wiki/8e5d62f5d2ac460f43c239ad519d3a37.jpg)

- Move the new configuration file to the default configuration file path.

  ```shell
  root@proxmox:/# mv xorg.conf.new /etc/X11/xorg.conf
  ```

- Restart the GUI.

  ```shell
  root@proxmox:/# startx
  ```

![](https://dfimg.dfrobot.com/nobody/wiki/faf9f14b53629377664fc5eb0f09dc9a.jpg)

- The Graphical User Interface will appear again. Follow the steps to complete the installation.

![](https://dfimg.dfrobot.com/nobody/wiki/91c00127f23252dbfc2fa407a7dbe8d4.jpg)

- After the installation is complete, the GUI will automatically close and return to the Shell.

![](https://dfimg.dfrobot.com/nobody/wiki/a9b334767ff5629e6c54cdef10fc5d43.jpg)

- Press Ctrl+Alt+Del to restart and unplug the USB flash drive to enter the Proxmox system.

![](https://dfimg.dfrobot.com/nobody/wiki/9b875cf70d6197e5843117cdc2bfad57.jpg)



## Windows Server

Windows Server is a powerful operating system developed by Microsoft for use on servers. It provides a wide range of features and services designed to meet the needs of businesses, organizations, and other enterprises. Windows Server is used to manage and control network resources, provide centralized authentication and authorization, and host web applications and databases, among other things. Please follow the steps below to install Windows Server properly.

![Windows_server_LOGO](https://dfimg.dfrobot.com/nobody/wiki/0a709c109218e564a46ee8c83543f6a7.jpg)

### What You Will Need

* 1 x Empty USB Flash Drive (8 GB or larger)
* [WIndows Server image file](https://info.microsoft.com/ww-landing-windows-server-2022.html) (Fill out the form and download Windows Server 2022 for free)

### USB Boot Disk

* Fill out the form and download Windows Server 2022 for free.
* Create a USB installation media for Windows Server. We recommend using 'Rufus' to create the installation media. You can download it [here](https://rufus.akeo.ie/).  

### Installation Steps

* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).
* Press ‘**F7**’ key continuously to enter into **Bootable Device Selection Menu**. 

* Use the ‘**UP**’ or ‘**Down**’ key to choose the USB bootable device, then press ‘**Enter**’ key.

![boot_option_select](https://dfimg.dfrobot.com/nobody/wiki/8de2c88f98e5bef98d4743f003fe70fd.jpg)

* It will enter into the OS installation terminal, which should resemble the image below. 

![Win_server_install](https://dfimg.dfrobot.com/nobody/wiki/0b329ddbfed6d3274ad01b27e2ed7e8b.jpg)

* The installation steps are same as normal Windows installation. Please follow the installation guide to complete the installation. Then you can log in to Windows Server!

### Network Driver Installation

When accessing the Windows server system, if the network adapter appears as an unknown device, it is necessary to manually install the appropriate NIC driver to ensure optimal performance.

- Download the [Intel NIC driver](https://www.dropbox.com/scl/fo/x319x1inalkc8ujnt2rn3/h?dl=0&rlkey=p83rcli3lmt6kamsjj9q8p43m).
- Log in to Windows Server, right click on Windows icon and go to **Device Manager**. You will see **Ethernet Controller** listed under "**Other devices**".

![Windows_server_01](https://dfimg.dfrobot.com/nobody/wiki/b37d7de50636c2b8bc9a82652cd9be06.jpg)

- Right click on **Ethernet Controller**, and select **Update driver**.

![Windows_server_02](https://dfimg.dfrobot.com/nobody/wiki/93b576ae0dab8f4564280d8a105c1872.jpg)

- Select **Browse my computer for drivers**.

![Windows_server_03](https://dfimg.dfrobot.com/nobody/wiki/6af53d303e3b964731c7025a421d788b.jpg)

- Select **Let me pick from a list of available drivers on my computer**.

![network_driver_install_04](https://dfimg.dfrobot.com/nobody/wiki/60ba352f438dfcdf53baff2992315577.jpg)

- Select **Show All Devices**.

![network_driver_install_05](https://dfimg.dfrobot.com/nobody/wiki/f27268296eaaa63f00bf2dc207246ecb.jpg)

- Click on **Have Disk** and locate the NIC driver.

![network_driver_install_06](https://dfimg.dfrobot.com/nobody/wiki/5430a2597581f165f8bf2e0b3159c63f.jpg)

- Select the **e2f file** in the driver pack and open it.
  ![network_driver_install_07](https://dfimg.dfrobot.com/nobody/wiki/305ebec9a02743029d3930dcc6fdd056.jpg)

- Locate the **Intel Ethernet Controller I225-LM** and select it.

![network_driver_install_08](https://dfimg.dfrobot.com/nobody/wiki/26fda8a378dea50f95f9e909c8c610c2.jpg)

- The Update Driver Warning window will pop up and confirm to install this driver.
  ![network_driver_install_09](https://dfimg.dfrobot.com/nobody/wiki/8cbd29643bf8553600646b8f211a68be.jpg)

- Now, Windows has successfully updated your drivers.
  ![network_driver_install_10](https://dfimg.dfrobot.com/nobody/wiki/8a26f552d4def937afba23e43999a865.jpg)

- Follow the guide again to install the driver for the other Ethernet Controller. The network adapters will be recognized correctly as shown below.
  ![](https://dfimg.dfrobot.com/nobody/wiki/7c652f7252b063d97ce3439850d5d52a.jpg)

- Congrats, you geek.

# VMware ESXi

VMware ESXi is a software program that enables virtualization, allowing multiple virtual machines to run on a single physical host. It is used to create and manage virtual machines, providing a cost-effective and efficient way to utilize hardware resources, simplify IT management, and increase server utilization.

As ESXi does not support Intel's hybrid consumer CPU architecture that integrates two types of CPU cores: **Performance-cores** (P-cores) and **Efficienct-cores** (E-cores) into the same physical CPU die, you may encounter a PSOD (Purple Screen of Death) when attempting to power on a virtual machine on LattePanda Sigma, resulting in the following exception:

![ESXI_PSOD](https://dfimg.dfrobot.com/nobody/wiki/861d87a7713e5f32be9faefd27851019.png)

The error code indicates that the issue is caused by CPU incompatibility. However, there is a workaround available that does not require disabling the E-Cores or P-Cores.

## Solution

To resolve the issue, we will add an ESXi kernel boot option that disables the CPU uniformity check. Please refer to the instructions below for more details.

#### **STEP 1** 

- When booting up the ESXi installer, you will be prompted to append additional ESXi kernel boot settings. Press **SHIFT+O** and add the following kernel option to the command line: **cpuUniformityHardCheckPanic=FALSE**. Then press enter to continue with the boot process.

![](https://dfimg.dfrobot.com/nobody/wiki/f7f0b737bd480a06cc63f3e10224551e.jpg)

- Install ESXi by following the install wizard and once you are prompted to reboot, **DO NOT reboot yet**. We still need to add the kernel option again so that ESXi can successfully boot after the installation. 

![reboot_page](https://dfimg.dfrobot.com/nobody/wiki/e1799abf0370c30b855a1d217df44c92.jpg)

#### **STEP 2**

- Switch into the ESXi shell by pressing **ALT+F1**. 
- Login using **'root'** and blank password as ESXi has not gone through full reboot and is not using the configured password. and Edit **vi /vmfs/volumes/BOOTBANK1/boot.cfg** 

![step03](https://dfimg.dfrobot.com/nobody/wiki/422002685ee1714e35c6aec1827c181f.jpg)

- Append following kernel option **cpuUniformityHardCheckPanic=FALSE** to existing kernelopt entry, which should look like the following:

​		`kernelopt=weaselInstalled autoPartition=FALSE cpuUniformityHardCheckPanic=FALSE`

![](https://dfimg.dfrobot.com/nobody/wiki/5c965acb1c476617f4a3a6ab016bcb9f.jpg)

- Save your changes by pressing **'wq'** and then change back to the reboot prompt by pressing **ALT+F2** and then reboot.
- Instead of having to manually append the ESXi kernel option, you will notice that it has been appended and applying the setting in the boot.cfg file.

![](https://dfimg.dfrobot.com/nobody/wiki/c905b91fad6dc6d9f60d615ec83a0687.png)

#### **STEP 3** 

To permanently configure the ESXi kernel boot setting, in case of updates/upgrades in the future, we can set the kernel setting using ESXCLI. 

- Login to DCUI by pressing **F2**. 

![](https://dfimg.dfrobot.com/nobody/wiki/b7b75f74dbd0efe4aac74462f82b5e76.png)

- Navigating to **Troubleshooting Option**.

![](https://dfimg.dfrobot.com/nobody/wiki/9e1c6e360069513669e25ad70d33dda1.png)

- Enable **ESXi Shell.**

![](https://dfimg.dfrobot.com/nobody/wiki/261472a16217589638daff8797b796be.png)

#### **STEP 4**

Switch into the ESXi shell by pressing **ALT+F1**. Then login with '**root**' and the password you had configured during installation. Now run the following ESXCLI command to configure the kernel option:

`esxcli system settings kernel set -s cpuUniformityHardCheckPanic -v FALSE`

![](https://dfimg.dfrobot.com/nobody/wiki/c0b0c496bda6dfb7291fe18e01b7bc89.png)

#### **STEP 5**

Reboot it by executing the command "**reboot**". Now, you can run VMware ESXi on your LattePanda Sigma.

