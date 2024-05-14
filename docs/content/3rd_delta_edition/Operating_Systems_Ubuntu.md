# Operating Systems

## Ubuntu

![](../../assets/images/Ubuntu_Logo.webp)

In this chapter, we will show the steps to install Ubuntu 22.04 on LattePanda 3 Delta.


### Preperations

* :material-usb-flash-drive-outline: Empty USB Flash Drive (8 GB or larger)
* 💿[Ubuntu 22.04 LTS disc image file](http://releases.ubuntu.com/jammy/) (64-bit Desktop disc image file is recommended)

### Installation Steps

* Download the Ubuntu 22.04 LTS image.
* Create a USB installation media for Ubuntu. We recommend using [**Rufus**](https://rufus.akeo.ie/) to create the installation media.
* Choose your USB flash drive, and load the ISO file. The GUI of Rufus will look like the picture below. Click the **`start`** button to burn the ISO file onto the USB flash drive.
![](../../assets/images/Rufus%20setup--Ubuntu%2022.04.webp)

* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).
* Press **++f7++** key continuously to enter into **`Bootable Device Selection Menu`**. 

* Use the **++arrow-up++** or **++arrow-down++** key to choose the USB bootable device, then press **++enter++** key.

![boot_option_select](../../assets/images/LattePanda 3 Delta/boot_option_select.webp)

* Then, you will enter the installation GUI as shown below. In this guide, we will take the **`Try or Install Ubuntu`** option as an example. 

![GUN_GRUB](../../assets/images/LattePanda 3 Delta/GUN_GRUB.webp) 

* Please double-click the **`Install Ubuntu`** icon. After double-clicking, the installation will begin.(as shown below)

![](../../assets/images/LattePanda 3 Delta/Ubuntu_Start_Install.webp)

* Choose your default language and continue. 

![Ubuntu_keyboard_layout](../../assets/images/LattePanda 3 Delta/Ubuntu_keyboard_layout.webp)

![Ubuntu_updates_software](../../assets/images/LattePanda 3 Delta/Ubuntu_updates_software.webp)

* Select the installation type that best suits your needs. As our SSD already has Windows installed, we will proceed to install Ubuntu alongside the Windows Boot Manager.

![Ubuntu_installation_type](../../assets/images/LattePanda 3 Delta/Ubuntu_installation_type.webp)

![Ubuntu_installation_type_confirm](../../assets/images/LattePanda 3 Delta/Ubuntu_installation_type_confirm.webp)

* Confirm the select drive and and that you wish to proceed with writing the previous changes to the disk.

![Ubuntu_drive](../../assets/images/LattePanda 3 Delta/Ubuntu_drive.webp)

![Ubuntu_change_to_disk](../../assets/images/LattePanda 3 Delta/Ubuntu_change_to_disk.webp)

* Select your time zone and click **`continue`** to proceed.

![Ubuntu_time_zone](../../assets/images/LattePanda 3 Delta/Ubuntu_time_zone.webp)

* Fill out all of the required input fields.

![Ubuntu_user_name](../../assets/images/LattePanda 3 Delta/Ubuntu_user_name.webp)

* Please be patient and wait for the installation to complete. Then, you will be asked to restart LattePanda to complete the installation.

![Ubuntu_install_process](../../assets/images/LattePanda 3 Delta/Ubuntu_install_process.webp)

Wait for your LattePanda to restart and boot up Ubuntu, then enter your password to log in. Enjoy it!

!!! Attention
    In older BIOS versions(LP-BS-7-S70JR120-CN51G-D and earlier), if you choose to <span style="color: rgba(225, 103, 13);">**install Ubuntu alongside Windows Boot Manager**</span>, LattePanda may boot into Windows instead of Ubuntu after restart , or Ubuntu doesn't show in the boot order priorities, please take the following steps:

    * Select **`UEFI Hard Disk Drive BBS Priorities`**.
    * Change the device in 'Boot Option #1/2'
    
    ![](../../assets/images/LattePanda 3 Delta/harddisk_order_3Delta.webp)



[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }