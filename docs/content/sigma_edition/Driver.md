# Operating System and Driver

## Official Windows 11 OS Image

| OS                     | Download From                                                |
| ---------------------- | ------------------------------------------------------------ |
| Windows 11 Pro English | [:material-dropbox:](https://www.dropbox.com/s/uitqb23soua6nrp/LP-JX-16-WTADLC1R200-001-D.7z?dl=0) or [:material-google-drive:](https://drive.google.com/file/d/1PSPULHW076BRwFyuzWzmk2vK5vnNoY2m/view?usp=share_link) |

## Windows 10/11

The Windows system will automatically connect to the internet to fetch driver updates after installation. If you cannot connect to the Windows update service, or if some drivers are still missing after the automatic update, you can download the offline driver package here.

| Name                                | Version         | Size    | Download                                                                        |
|--------------------------------------------|-----------------|---------|---------------------------------------------------------------------------------|
| Intel Chipset Driver                       | 10.1.19159.8331 | 2.70 MB | [:material-download:](../../assets/drivers/sigma_edition/Chipset_10.1.19159.8331.zip) |   
| Intel Chipset Thunderbolt                            | / | 1.42 MB | [:material-download:](../../assets/drivers/sigma_edition/Thunderbolt_1.41.1340.0.zip) |   
| Intel Chipset CDS                                    | / | 2.70 MB | [:material-download:](../../assets/drivers/sigma_edition/Chipset_patch_10.1.49.7.zip) |
| Intel Network Adapter Driver               | Latest          | N/A     | [:material-download:](https://www.intel.com/content/www/us/en/download/727998/)[^1] |
| Intel Wireless Adapter Driver              | Latest          | N/A     | [:material-download:](https://www.intel.com/content/www/us/en/download/19351/)[^1]  |
| Intel Wireless Bluetooth Driver[^2]           | Latest          | N/A     | [:material-download:](https://www.intel.com/content/www/us/en/download/18649/)[^1]  |
| Intel Iris Xe Graphics Driver              | Latest          | N/A     | [:material-download:](https://www.intel.com/content/www/us/en/download/785597/)[^1] |
| Realtek Audio Driver                       | 6.0.9486.1      | 26.9 MB | [:material-download:](../../assets/drivers/sigma_edition/RealtekAudio_6.0.9486.1.zip)                                                         |
| Realtek Audio Control Application          | 1.36.273.0      | 7.92 MB | [:material-download:](../../assets/drivers/sigma_edition/RtkUWP_1.36.273.0.zip)                                                         |
| Thunderbolt Software                       | 1.48.0.0        | 32.5 MB | [:material-download:](../../assets/drivers/sigma_edition/Thunderbolt_1.48.0.0.zip)                                                         |
| TouchPanel Driver                          | 1.3.2.0         | 63.4 KB | [:material-download:](../../assets/drivers/sigma_edition/TouchPanel_1.3.2.0.zip)                                                         |
| LattePanda Leonardo Driver                 | 1.2.3.0         | 8.82 KB | [:material-download:](../../assets/drivers/sigma_edition/LattePanda_Leonardo_1.2.3.0.zip)                                                         |
| intel Serial IO Driver                     | 3.0.2709.3      | 340 KB  | [:material-download:](../../assets/drivers/sigma_edition/SerialIO_3.0.2709.3.zip)                                                         |
| intel HID Event Filter Driver              | 2.2.1.386       | 46.6 KB | [:material-download:](../../assets/drivers/sigma_edition/HID_2.2.1.386.zip)                                                         |
| Intel Management Engine Interface Driver   | 2225.3.9.0      | 20.5 MB | [:material-download:](../../assets/drivers/sigma_edition/MEI_2225.3.9.0.zip)                                                         |
| Intel GNA Scoring Accelerator Driver       | 03.00.00.1457   | 53.9 KB | [:material-download:](../../assets/drivers/sigma_edition/GNA_03.00.00.1457.zip)                                                         |
| Intel Integrated Sensor Solution Driver    | 3.1.0.4572      | 2.51 MB | [:material-download:](../../assets/drivers/sigma_edition/ISH_3.1.0.4572.zip)                                                         |
| Intel Innovation Platform Framework Driver | 1.0.10900.26658 | 4.82 MB | [:material-download:](../../assets/drivers/sigma_edition/IPF_1.0.10900.26658.zip)                                                         |

[^1]: Download from intel.com

[^2]: Only for models with pre-installed WiFi adapter

## Linux

Linux drivers are usually provided by the distribution with kernel and kernel module updates, please use the new kernel for full driver support.

- Minimum kernel: 5.15
- Recommended kernel: 6.1 or newer


## LattePanda Leonardo Driver and IDE Configuration

The LattePanda Leonardo is different from the standard Arduino Leonardo. The IDE configuration files and drivers are not the same. 

### In Windows OS

The official windows 10/11 system image provided by LattePanda team has integrated drivers and configuration files. So if you installed the Windows system by yourself, please configure the driver and IDE files according to the following steps.

* Download the [Arduino IDE](https://www.arduino.cc/en/software/OldSoftwareReleases). Then install it on your windows 10/11 system. We use the Arduino IDE 1.8.16.

* Download the LattePanda Leonardo configuration files from [Dropbox Link](https://www.dropbox.com/s/2s60p70v6ewmkbh/LattePanda%20Leonardo%20Configuration%20Files.zip?dl=0) or [Google Drive Link](https://drive.google.com/file/d/1rfrUShz9Y8ZYq2rywhecdoYYGGes5IEM/view?usp=sharing). Then unzip it.

* Enter into "Windows Driver" folder, and run "dpinst-amd64.exe" to install the driver. After that, you will see the LattePanda Leonardo port in the device manager.

    ![](../../assets/images/LattePandaLeonardoPort.webp)

* Enter into "Arduino IDE Files" folder, copy "avr-0.0.3" folder to "C:\Program Files(x86)\Arduino\hardware". 

  ![](../../assets/images/avr003.webp)

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. If you see  “LattePanda Leonardo” board, the Arduino IDE files are correct.

![](../../assets/images/ChooseLattePandaLeonardo.webp)

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

  ![](../../assets/images/CyLPLeoFile.webp)

* Run  Arduino IDE，Open “Tool” menu，Choose “Board：xxx” -> “LattePanda AVR Boards”->“LattePanda Leonardo”. 

![](../../assets/images/LPLeoBoardUbuntu.webp)

* Then choose the serial port: “Port: /dev/ttyACM0 xxx” -> “/dev/ttyACM0(LattePanda Leonardo)”.

![](../../assets/images/LPLeonardoPortUbuntu.webp)



[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }