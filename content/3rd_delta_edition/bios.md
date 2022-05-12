# BIOS Setup

## Enter into BIOS Menu

* Power on or reboot LattePanda.

* Press ‘**DEL**’ key continuously to enter into BIOS menu before you see the LattePanda logo on the splash screen. 

    <center>![](/assets/images/lp_boot_logo.jpg)</center>



!!! Note
    **Turn on Fast Startup** is disabled by default in our system image file, so that LattePanda will be in shut down state after it's turned off. Otherwise, LattePana will be in hibernate state after it is turned off.  This is caused by the power management feature of windows OS. Some BIOS settings are related to the status, so please pay attention to check this setting.

<center>![](/assets/images/fast_startup_3Delta.jpg)</center>



The following describes some common BIOS settings and usage.

## Configuration of USB port Power Control

Three USB Type-A ports on LattePanda 3 Delta support power control. Every port can be configured independently.

**Path: BIOS Setup -> Advanced -> USB Configuration -> Always On USB Port**

  <center>![](/assets/images/USBcontrol_BIOS_3Delta.jpg)</center>

You can set it enabled or disabled. The default setting is disabled.

| Always On USB Port | Power Control of the USB Port                                |
| ------------------ | ------------------------------------------------------------ |
| Enabled            | Run: Enabled; Sleep: Enabled; Hibernate: Enabled; Shut Down: Enabled |
| Disabled           | Run: Enabled; Sleep: Enabled; Hibernate: Disabled; Shut Down: Disabled |
|                    | Enabled means the USB port can output power; Disabled means the USB port can't output power. |

  <center>![](/assets/images/usb_number_3Delta.jpg)</center>

**Attention:** 

* If LattePanda is disconnected from the power supply, all USB A ports are powered off by default when the lattePanda connects power supply again and is not turned on. The MCU power control is also the same.
* The USB2.0 pin in the female header doesn't support power control.


## Auto Power-on
To turn on LattePanda without pressing the power button, please set AcPowerLoss as Power On in the BIOS.

**Path: BIOS Setup -> Advanced -> Power Management -> AcPowerLoss**

  <center>![](/assets/images/AcPowerLoss_3Delta.jpg)</center>

The default setting is Power Off.

!!! Warning
    When the RTC battery runs down, Auto Power-on function will not work, so please ensure that the RTC battery is fully charged.

## Bootable Device Order

The default boot order priorities are as follows: 

* Boot Option #1: NVME
* Boot Option #2: HardDisk
* Boot Option #3: USB Device
* Boot Option #4: Network

If default boot order priorities don't meet your requirement, you can change them manually.

**Path: BIOS Setup -> Boot-> Boot Option**

Press 'Up' or 'Down' key to select the bootable device, and press 'Enter' key to confirm it. 

  <center>![](/assets/images/bootdevice_order_3Delta.jpg)</center>

**Attention:** 

The M.2 SATA SSD and built-in eMMC all belong to HardDisk in the BIOS. If you want to change the order priorities of the hard disk, or eMMC doesn't show in the  boot order priorities, please take the following steps:

* Select 'UEFI Hard Disk Drive BBS Priorities'

* Change the device in 'Boot Option #1/2'

    <center>![](/assets/images/harddisk_order_3Delta.gif)</center>



## Deep Sleep EUP Support
Handheld or portable devices/projects typically require the device to maintain ultra-low power consumption when truned off. In this application scenario, you can enable Deep Sleep EUP Support in the BIOS, to further reduce the power consumption of LattePanda to 18mA@12V after shutdown.

**Path: BIOS Setup -> Advanced -> Power Management -> Deep Sleep Eup Support**

  <center>![](/assets/images/deep_eup_3Delta.jpg)</center>

The default setting is Disabled.

**Attention:**

* When deep sleep eup support is enabled, Wake On Lan will not work.  The power supply pins of 5V,3.3V, 1.8V, USB2.0 in the female header, and three USB Type-A ports will be forced to power off.

* Only when Turning on Fast Startup in windows OS is disabled, Deep Sleep Eup function can work probably. 

## Update the BIOS Firmware

If a new BIOS firmware is required, or the BIOS is abnormal, you can update the BIOS firmware.

Before this operation, it is recommended to unplug the SSD, TF card, and other storage devices to find the required drive containing the BIOS firmware quickly in the updating process.

* Download [the BIOS file of LattePanda 3 Delta](https://github.com/LattePandaTeam/LattePanda-Win10-Software/tree/master/BIOS%20for%20LattePanda%203%20Delta).

* Format your USB drive into **FAT32** format.

* Unzip the BIOS file. Then copy and paste them to the USB drive. 

   **The files located on the USB flash drive should be as shown below.**

<center>![](/assets/images/lp3deltabiosfile_in_usbdrive.jpg)</center>

* Insert your USB drive into LattePanda, and turn on the LattePanda. (If you created the USB installation media on LattePanda, please restart the LattePanda.) 
* Press ‘**DEL**’ key continuously to enter into **BIOS Setup Menu**. 
* **Path: BIOS Setup -> Save & Exit-> Boot Override**. In the boot override menu, choose the UEFI device.
<center>![](/assets/images/BootOverrideDeivce_3Delta.jpg)</center>

* Then press '**Enter**' key, to enter into the EFI shell,  then press '**ESC**' key to skip startup.nsh.

  <center>![](/assets/images/EFIShellMenu_3Delta.jpg)</center>

* Input '**fs 0:**', then input '**ls**', to check whether the BIOS firmware is in the list. The BIOS firmware is a BIN file. If not, please continue to input '**fs1:**','**fs2:**', etc. to check, until finding the BIOS firmware in the list.

<center>![](/assets/images/EFIShellCheck_3Delta.jpg)</center>

* Then input '**BIOS.nsh**', and press '**Enter**' key. The update process will start. It will take about 2 minutes.

<center>![](/assets/images/EFIShellFinish_3Delta.jpg)</center>

* When it has been done, the green font message "FPT Operation Successful" will be on the screen. Then short press the power button to turn off the LattePanda. Unplug the USB drive. Then short press the power button to turn on the LattePanda. The update of BIOS has finished now.