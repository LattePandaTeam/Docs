# BIOS Setup

## How to enter into the BIOS setup?

* Power on or reboot the LattePanda mainboard.

* Before seeing the LattePanda logo in the boot process,  press ‘**DEL**’ key continuously to enter into the BIOS setup. 

    <center>![](/assets/images/lp_boot_logo.jpg)</center>



!!! Note
    The default setting of turning on fast startup in our system image file is disabled. Only with this setting, the LattePanda will be  in shut down state after it is turned off. If turning on fast startup is enabled, the LattePana will be in hibernate state after it is turned off.  This is caused by the power management feature of windows OS. Some BIOS settings are related to the status, so please pay attention to check this setting.

<center>![](/assets/images/fast_startup_3Delta.jpg)</center>



The following content describes the common settings and usage in the BIOS.

## Configure the Power Control of the USB Ports

Three USB Type-A ports on LattePanda 3 Delta support power control. Every port can be configured independently.

Path: BIOS Setup -> Advanced -> USB Configuration -> Always On USB Port

  <center>![](/assets/images/USBcontrol_BIOS_3Delta.jpg)</center>

You can set it enabled or disabled. The default setting is disabled.

| Always On USB Port | Power Control of the USB Port                                |
| ------------------ | ------------------------------------------------------------ |
| Enabled            | Run: Enabled; Sleep: Enabled; Hibernate: Enabled; Shut Down: Enabled |
| Disabled           | Run: Enabled; Sleep: Enabled; Hibernate: Disabled; Shut Down: Disabled |
|                    | Enabled means the USB port can output power; Disabled means the USB port can't output power. |

  <center>![](/assets/images/usb_number_3Delta.jpg)</center>

**Attention:** 

* If the LattePana was disconnected from the power supply, then re-power it on, all USB Type-A ports are forced to power off by default. The MCU power control is also the same.
* The USB2.0 pin in the female header doesn't support power control.


## Auto Power-on
To start the LattePanda without pressing the power button, please set AcPowerLoss as Power On in the BIOS.

Path: BIOS Setup -> Advanced -> Power Management -> AcPowerLoss

  <center>![](/assets/images/AcPowerLoss_3Delta.jpg)</center>

The default setting is power off.

!!! Warning
    When the RTC battery is empty, the auto power-on function will not work, so please ensure that the RTC battery is enough.

## Bootable Device Order

The default boot order priorities are as follows: 

* Boot Option #1: NVME
* Boot Option #2: HardDisk
* Boot Option #3: USB Device
* Boot Option #4: Network

If the default boot order priorities don't suit your requirements, you can change them manually.

Path: BIOS Setup -> Boot-> Boot Option

Press 'Up' or 'Down' key to select the boot device, then press 'Enter' key to confirm it. 

  <center>![](/assets/images/bootdevice_order_3Delta.jpg)</center>

**Attention:** 

The M.2 SATA SSD and eMMC onboard all belong to hard disk in the BIOS. If you want to change the order priorities of the hard disk, or eMMC doesn't show in the  boot order priorities, please do the following steps:

* Select 'UEFI Hard Disk Drive BBS Priorities'

* Change the device in 'Boot Option #1/2'

    <center>![](/assets/images/harddisk_order_3Delta.gif)</center>



## Deep Sleep Eup Support
The handheld or portable device/project requires low shutdown power consumption. In this application scenario, you can set deep sleep eup support as enabled in the BIOS, to let LattePanda reduce shutdown power consumption further. The shutdown power consumption is about 18mA@12V.

Path: BIOS Setup -> Advanced -> Power Management -> Deep Sleep Eup Support

  <center>![](/assets/images/deep_eup_3Delta.jpg)</center>

The default setting is disabled.

**Attention:**

* When deep sleep eup support is enabled, the wake on lan will not work.  The power supply of 5V,3.3V, 1.8V, USB2.0 in the female header, and three USB Type-A ports will be forced to power off.

* Only when turning on fast startup in windows OS is disabled can the deep sleep eup function work probably. 

