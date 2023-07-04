# Hardware Driver

## Standard Driver
In the event that you choose not to use the Windows image file that we have provided, you may encounter driver issues. **We recommend utilizing Windows Update to obtain the most up-to-date drivers. Most drivers can be installed correctly, including WiFi, Ethernet, and graphics drivers.**

If you encounter any unknown devices in the device manager, please refer to the following guidelines.

All hardware drivers have been packaged in our Windows operating system, which allows you to download the driver files directly. Although these drivers may not be the latest versions available, they function seamlessly on both Windows 10 and 11.

### How to install the driver of the unknown device?

  * Download the driver files from [Dropbox Link](https://www.dropbox.com/scl/fo/jk3rml54hw39f5f0f598x/h?dl=0&rlkey=zkbshxpnha6bhijv1n2ksw6yz).
  
  * Unzip the driver files. You could unzip them in the same folder.
  
  * Most drivers can be installed by double-clicking the .exe file. Some need to be installed manually, the steps are as follows:

  * Open the device manager, then select the unknown device. 

    Right Click -> Update driver -> Select "Browse my computer for drivers" and locate the folder where you have unzipped the driver files.
  
    <center>![](/assets/images/unknow_device_install_driver.jpg)</center>
  
  * Then click "Next" and the driver will automatically install.



## Touch Panel Driver

* [Windows Touch Panel Drivers (V1.1) - 64Bit for Windows 10](https://github.com/LattePandaTeam/LattePanda-Win10-Software/raw/master/Drivers/4G64GB_Drivers/Touch/64%20bit%20GoodixTouchDriver%20v1.1.rar)

* [Windows Touch Panel Drivers(V1.3.2)-64bit for Windows 11](https://raw.githubusercontent.com/LattePandaTeam/LattePanda-Win10-Software/master/Drivers/4G64GB_Drivers/Touch/Goodix%20Touch%20HID(Win11).zip)

<font color="blue">Please note that “install.bat” must be run as administrator to update the driver correctly.</font>



## LattePanda Leonardo Driver and IDE Configuration

The LattePanda Leonardo is different from the standard Arduino Leonardo. The IDE configuration files and drivers are not the same. 

### In Windows OS

The official windows 10/11 system image provided by LattePanda team has integrated drivers and configuration files. So if you installed the Windows system by yourself, please configure the driver and IDE files according to the following steps.

* Download the [Arduino IDE](https://www.arduino.cc/en/software/OldSoftwareReleases). Then install it on your windows 10/11 system. We use the Arduino IDE 1.8.16.

* Download the LattePanda Leonardo configuration files from [Dropbox Link](https://www.dropbox.com/s/2s60p70v6ewmkbh/LattePanda%20Leonardo%20Configuration%20Files.zip?dl=0) or [Google Drive Link](https://drive.google.com/file/d/1rfrUShz9Y8ZYq2rywhecdoYYGGes5IEM/view?usp=sharing). Then unzip it.

* Enter into "Windows Driver" folder, and run "dpinst-amd64.exe" to install the driver. After that, you will see the LattePanda Leonardo port in the device manager.

    <center>![](/assets/images/LattePandaLeonardoPort.jpg)</center>

* Enter into "Arduino IDE Files" folder, copy "avr-0.0.3" folder to "C:\Program Files(x86)\Arduino\hardware". 

  <center>![](/assets/images/avr003.jpg)</center>

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. If you see  “LattePanda Leonardo” board, the Arduino IDE files are correct.

<center>![](/assets/images/ChooseLattePandaLeonardo.jpg)</center>

### In Ubuntu OS

We take the ubuntu OS as an example to demonstrate how to install Arduino IDE and configure Lattepanda Leonardo. 

* Download the [Arduino IDE](https://www.arduino.cc/en/software/OldSoftwareReleases). We choose the Linux 64 bits version of Arduino IDE 1.8.16.

* Unzip the downloaded arduino-1.8.16-linux64.tar.xz file. You can do this in terminal with the following command:

```bash
tar -xvf arduino-1.8.16-linux64.tar.xz
```
This will unzip the Arduino IDE into the current directory.

* Move the Arduino IDE to the /opt directory. This is where third-party software is typically stored in Linux systems. Run the following command:

```bash
sudo mv arduino-1.8.16 /opt
```

* Navigate to the Arduino IDE directory:

```bash
cd /opt/arduino-1.8.16
```

* Run the installation script:

```bash
sudo ./install.sh
```
This will create a desktop shortcut and register the Arduino IDE in the system's application menu.

* To be able to upload code to the Arduino board without root permissions, add the current user to the dialout group. Run the following command:

```bash
sudo usermod -a -G dialout $USER
```
* You will then need to log out and log back in for the changes to take effect. This completes the installation of the Arduino IDE on your Ubuntu system. 

* Download the LattePanda Leonardo configuration files from [Dropbox Link](https://www.dropbox.com/s/2s60p70v6ewmkbh/LattePanda%20Leonardo%20Configuration%20Files.zip?dl=0) or [Google Drive Link](https://drive.google.com/file/d/1rfrUShz9Y8ZYq2rywhecdoYYGGes5IEM/view?usp=sharing). Then unzip it.

* Enter into "Arduino IDE Files" folder, copy "avr-0.0.3" folder to "/opt/arduino-1.8.16/hardware". 

  <center>![](/assets/images/CyLPLeoFile.png)</center>

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. 

<center>![](/assets/images/LPLeoBoardUbuntu.png)</center>

* Then choose the serial port: “Port: /dev/ttyACM0 xxx” -> “/dev/ttyACM0(LattePanda Leonardo)”.

<center>![](/assets/images/LPLeonardoPortUbuntu.png)</center>