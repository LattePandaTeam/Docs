# Hardware Driver

## Standard Driver
In the event that you choose not to use the Windows image file that we have provided, you may encounter driver issues. **We recommend utilizing Windows Update to obtain the most up-to-date drivers. Most drivers can be installed correctly, including WiFi, Ethernet, and graphics drivers.**

If you encounter any unknown devices in the device manager, please refer to the following guidelines.

All hardware drivers have been packaged in our Windows operating system, which allows you to download the driver files directly. Although these drivers may not be the latest versions available, they function seamlessly on both Windows 10 and 11.

### How to install the driver of the unknown device?

  * Download the driver files from [Dropbox Link](https://www.dropbox.com/scl/fo/jk3rml54hw39f5f0f598x/h?dl=0&rlkey=zkbshxpnha6bhijv1n2ksw6yz).
  
  * Unzip the driver files. You could unzip them in the same folder.
  
  * Open the device manager, then select the unknown device. 

    Right Click -> Update driver -> Select "Browse my computer for drivers" and locate the folder where you have unzipped the driver files.
  
    <center>![](/assets/images/unknow_device_install_driver.jpg)</center>
  
  * Then click "Next" and the driver will automatically install.

## Touch Panel Driver

The touch panel driver for LattePanda 3 Delta is the same as that for the LattePanda V1.0 and LattePanda Alpha/Delta.

[Windows Touch Panel Drivers (V1.1) - 64Bit for Windows 10](https://github.com/LattePandaTeam/LattePanda-Win10-Software/raw/master/Drivers/4G64GB_Drivers/Touch/64%20bit%20GoodixTouchDriver%20v1.1.rar)

<br>**PLEASE NOTE: “install.bat” must be run as administrator to update the driver correctly.**

<br>

[Windows Touch Panel Drivers(V1.3.2)-64bit for Windows 11](https://raw.githubusercontent.com/LattePandaTeam/LattePanda-Win10-Software/master/Drivers/4G64GB_Drivers/Touch/Goodix%20Touch%20HID(Win11).zip)



## LattePanda Leonardo Driver

The LattePanda Leonardo is different from the standard Arduino Leonardo. The IDE configuration files and drivers are not the same. 

The official windows 10/11 system image provided by LattePanda team has integrated drivers and configuration files. So if you installed the Windows system by yourself, please configure the driver and IDE files according to the following steps.

* Download the [Arduino IDE](https://www.arduino.cc/en/software/OldSoftwareReleases). Then install it on your windows 10/11 system. We use the Arduino IDE 1.8.16.

* Download the LattePanda Leonardo configuration files from [Dropbox Link](https://www.dropbox.com/s/2s60p70v6ewmkbh/LattePanda%20Leonardo%20Configuration%20Files.zip?dl=0) or [Google Drive Link](https://drive.google.com/file/d/1rfrUShz9Y8ZYq2rywhecdoYYGGes5IEM/view?usp=sharing). Then unzip it.

* Enter into "Windows Driver" folder, and run "dpinst-amd64.exe" to install the driver. After that, you will see the LattePanda Leonardo port in the device manager.

    <center>![](/assets/images/LattePandaLeonardoPort.jpg)</center>

* Enter into "Arduino IDE Files" folder, copy "avr-0.0.3" folder to "C:\Program Files(x86)\Arduino\hardware". 

  <center>![](/assets/images/avr003.jpg)</center>

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. If you see  “LattePanda Leonardo” board, the Arduino IDE files are correct.

<center>![](/assets/images/ChooseLattePandaLeonardo.jpg)</center>