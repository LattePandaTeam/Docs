# Hardware Driver

## Standard Driver
If you do not use the windows image file provided by us, you may encounter driver problems. **You can use Windows Update to get the latest drivers. Most drivers can be installed correctly, such as WiFi, ethernet, and graphics drivers.** 

If you still find some unknown devices in the device manager, please refer to the following method.

We packaged all hardware drivers in our Windows operating system. So you could directly download the driver files. These drivers may not be the latest, but they all work fine in windows 10 and 11.

### How to install the driver of the unknown device?

  * Download the driver files from [Dropbox Link](https://www.dropbox.com/sh/q0rdgtnlp4wlajw/AADj-vQKuu5ZM3OCEmXDHWJka?dl=0) or [Google Drive Link](https://drive.google.com/drive/folders/1-m6dQCReMQ_iV0Kqk87u9775eWJYzAgd?usp=sharing).
  
  * Unzip the driver files. You could unzip them in the same folder.
  
  * Most drivers can be installed by double-clicking the .exe file. <br>Some need to be installed manually, the steps are as follows:
  
  * Open the device manager, then select the unknown device. 

    Right Click -> Update driver -> Browse my computer for drivers, then select the folder where you unzip the driver files.
  
    ![](https://dfimg.dfrobot.com/nobody/wiki/8d286d45709bcc61db8948f7e44ee430.jpg)
  
  * Then click Next. The driver will be automatically installed.



## Touch Panel Driver

<br>

[Windows Touch Panel Drivers (V1.1) - 64Bit for Windows 10](https://github.com/LattePandaTeam/LattePanda-Win10-Software/raw/master/Drivers/4G64GB_Drivers/Touch/64%20bit%20GoodixTouchDriver%20v1.1.rar)

<br>

[Windows Touch Panel Drivers(V1.3.2)-64bit for Windows 11](https://raw.githubusercontent.com/LattePandaTeam/LattePanda-Win10-Software/master/Drivers/4G64GB_Drivers/Touch/Goodix%20Touch%20HID(Win11).zip)

<br>**PLEASE NOTE: “install.bat” must be run as administrator to update the driver correctly.**

<br>

## LattePanda Leonardo Driver and IDE Configuration

The LattePanda Leonardo is different from the standard Arduino Leonardo. The IDE configuration files and drivers are not the same. 

### In Windows OS

The official windows 10/11 system image provided by LattePanda team has integrated drivers and configuration files. So if you installed the Windows system by yourself, please configure the driver and IDE files according to the following steps.

* Download the [Arduino IDE](https://www.arduino.cc/en/software/OldSoftwareReleases). Then install it on your windows 10/11 system. We use the Arduino IDE 1.8.16.

* Download the LattePanda Leonardo configuration files from [Dropbox Link](https://www.dropbox.com/s/2s60p70v6ewmkbh/LattePanda%20Leonardo%20Configuration%20Files.zip?dl=0) or [Google Drive Link](https://drive.google.com/file/d/1rfrUShz9Y8ZYq2rywhecdoYYGGes5IEM/view?usp=sharing). Then unzip it.

* Enter into "Windows Driver" folder, and run "dpinst-amd64.exe" to install the driver. After that, you will see the LattePanda Leonardo port in the device manager.

    ![](https://dfimg.dfrobot.com/nobody/wiki/15bd9d92c858bbaa3b64127ed4c0d7af.jpg)

* Enter into "Arduino IDE Files" folder, copy "avr-0.0.3" folder to "C:\Program Files(x86)\Arduino\hardware". 

  ![](https://dfimg.dfrobot.com/nobody/wiki/880fa705b28ee905906731eaa156e8f2.jpg)

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. If you see  “LattePanda Leonardo” board, the Arduino IDE files are correct.

![](https://dfimg.dfrobot.com/nobody/wiki/ccf3abb48ca1a0af09be0adf0a1e099b.jpg)

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

  ![](https://dfimg.dfrobot.com/nobody/wiki/5d2939ad512841b985e31fe54f998a10.png)

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. 

![](https://dfimg.dfrobot.com/nobody/wiki/d581ce754d99beca5e41bdb1fc2c05cf.png)

* Then choose the serial port: “Port: /dev/ttyACM0 xxx” -> “/dev/ttyACM0(LattePanda Leonardo)”.

![](https://dfimg.dfrobot.com/nobody/wiki/1ca431082f3774ae8d0161eecf69a600.png)