# BIOS Setup

## Enter into BIOS Menu

* Power on or reboot LattePanda.

* Press the **'DEL'** key repeatedly before the LattePanda logo appears on the screen during the boot process.

    <center>![](/assets/images/lp_boot_logo.jpg)</center>



The following outlines some common BIOS settings.

## CPU Cooling Fan Settings

You can modify the CPU fan settings through the following path. The default setting is **"Automatic Mode"**.

**Path: BIOS Setup -> Advanced -> Hardware Monitor -> CPU Fan Mode**

![](https://dfimg.dfrobot.com/nobody/wiki/2ca0ba9f3769cb55c638922aeef2d670.jpg)



## USB ports Power Control

All four USB Type-A ports on LattePanda Sigma support power control. The Font USB 2.0 port, rear USB 3.2 gen2 port and the USB 2.0 pin header can be set separately.

**Path: BIOS Setup -> Advanced -> Power Management -> Always On Rear USB Port/Always On Front USB Port/Always On USB PIN Port**

![](https://dfimg.dfrobot.com/nobody/wiki/381f7f746e49ad34c13a59e65b331c6b.jpg)

You can set it enabled or disabled. The default setting is **disabled**.

| Always On USB Port | Power Control of the USB Port                                |
| ------------------ | ------------------------------------------------------------ |
| Enabled            | Run: Enabled; Sleep: Enabled; Hibernate: Enabled; Shut Down: Enabled |
| Disabled           | Run: Enabled; Sleep: Enabled; Hibernate: Disabled; Shut Down: Disabled |
|                    | Enabled means the USB port can output power; Disabled means the USB port cannot output power. |

![](https://dfimg.dfrobot.com/nobody/wiki/3375ae90a8b0ac0d8bf888254e722348.png)

**Attention:** 

* When the LattePanda is disconnected from the power supply, all USB-A ports and the MCU power control are powered off by default. When the LattePanda is reconnected to the power supply and not turned on, the USB-A ports and the MCU power control remain off.


## Auto Power-on
To turn on LattePanda without pressing the power button, please set Auto Power On in the BIOS.

**Path: BIOS Setup -> Advanced -> Power Management -> Auto Power On**

![](https://dfimg.dfrobot.com/nobody/wiki/ff8ea5b681c07aee5d6341d4e08997b3.jpg)

The default setting is **Disabled**.

!!! Warning
    Please ensure that the RTC battery is fully charged, as when it runs down, the Auto Power-on function will not work.

## Bootable Device Order

The default boot order priorities are as follows: 

* Boot Option #1: NVME
* Boot Option #2: USB Device
* Boot Option #3: Network

If default boot order priorities don't meet your requirement, you can change them manually.

**Path: BIOS Setup -> Boot-> Boot Option Priorities**

![](https://dfimg.dfrobot.com/nobody/wiki/2d236c1341c198c7d9f517909e6f3267.jpg)

Press 'Up' or 'Down' key to select the bootable device, and press 'Enter' key to confirm it. 