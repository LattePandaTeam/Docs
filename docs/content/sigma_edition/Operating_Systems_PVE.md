# Operating Systems

## Proxmox VE

![PVE_LOGO](../../assets/images/Sigma/PVE_LOGO.webp)

### What You Will Need

* :material-usb-flash-drive-outline:  Empty USB Flash Drive (8 GB or larger)
* 💿[Proxmox VE image file](https://www.proxmox.com/en/downloads/category/iso-images-pve) (Download Proxmox VE 7.4 ISO Installer)

### Build an USB Boot Disk

* Download the Proxmox VE image file. We use `Proxmox VE 7.4 ISO Installer`.
* Create a USB installation media for Proxmox VE. We recommend using [Rufus](https://rufus.akeo.ie/) to create the installation media. 
* Choose your USB flash drive, and load the ISO file. The GUI of Rufus will look like the picture below. Click `Start` to burn the ISO file onto the USB flash drive.

![PVE_rufus](../../assets/images/Sigma/PVE_rufus.webp)

### Installation Steps

* Insert your USB drive into LattePanda, and turn on the LattePanda(Note that if you created the USB installation media on the same LattePanda, you'll need to restart the device before beginning the installation process).
* Press ++f7++ key continuously to enter into `Bootable Device Selection Menu`. 
* Use the ++arrow-up++ or ++arrow-down++ key to choose the USB bootable device, press ++enter++ key, then the welcome interface of Proxmox will appear.

![boot_option_select](../../assets/images/Sigma/boot_option_select.webp)

![Proxmox_GUI](../../assets/images/Sigma/Proxmox_GUI.webp)

!!! Note

    - Please note that Proxmox 7.4-1 does not support the graphics of latest Intel 13th generation processor, which means that the graphical user interface(GUI) may fail to start. However, this issue is expected to be resolved in a future edition of Proxmox. 
    -  If you are able to access the graphical user interface(GUI) directly, you may not need to refer to this tutorial. 

* Select `Install Proxmox VE`. Wait a few seconds until the GUI startup failure is displayed. Input `Xorg -configure` to manually create a new X11 configuration file.

  ```shell
  Xorg -configure
  ```

![PVE_INSTALL_01](../../assets/images/Sigma/PVE_INSTALL_01.webp)

- After creating a new configuration file, disable the intel driver in it

  1. Go to editor. 

     `nano xorg.conf.new`


![](../../assets/images/Sigma/759f.webp)

​		2. Search for the phrase `Driver "intel"` (you can press ++ctrl++ + ++w++ to find it quickly), and replace it with `Driver "fbdev"`.

![](../../assets/images/Sigma/2e0f.webp)

​		3. Press ++ctrl++ + ++x++ , save and exit. Press ++y++ to save modified buffer.

![](../../assets/images/Sigma/3a37.webp)

- Move the new configuration file to the default configuration file path.

  ```shell
  root@proxmox:/# mv xorg.conf.new /etc/X11/xorg.conf
  ```

- Restart the GUI.

  ```shell
  root@proxmox:/# startx
  ```

![](../../assets/images/Sigma/dc9a.webp)

- The Graphical User Interface will appear again. Follow the steps to complete the installation.

![](../../assets/images/Sigma/e8d4.webp)

- After the installation is complete, the GUI will automatically close and return to the Shell.

![](../../assets/images/Sigma/5d43.webp)

- Press ++ctrl++ + ++alt++ + ++del++ to restart and unplug the USB flash drive to enter the Proxmox system.

![](../../assets/images/Sigma/ad57.webp)



[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }