## Background

To power your LattePanda 1st gen product, there're two different power source interface. One is the commonly used micro USB port. The other is 5v/gnd pins, which is marked "CN2 header pins" on the board. 

* The MicroUSB port is more for desktop development scenarios. 
* The CN2 pin header is a good power source for embedded application, which has limited space and even providing a stable stronger power source (higher current for feeding enough current for sensing system at the same time, like 3~4 Amps) for the system.
* The **power consumption** of LattePanda with **full computing load** is about 1.6 Amp. However when booting the system, the **peak** current required is about 2 Amp.

## Hardware required

1. USB Wall Adapter with up to 2A output
2. Quality MicroUSB cable (capable of supplying 2A current)
3. HDMI cable
4. Heatsink or active cooling fan (recommended)

**Other general purpose PC peripherals**

1. Monitor with HDMI port or MIPI displays from LattePanda
2. Keyboard and mouse 


!!! Note
    We've noticed that there're lots of fake USB adapter and low quality cables in the market can't provide up to 2A current (even though they marked "2A" on the spec)! According to our experience, in most cases, this problem caused the user can't boot the device properly for the first time.
    So please check this again and again. Even try replacing another adapter or cable when booting the device unsuccessfully.

A power adapter will not be bundled with the board, but you may get one from our online store, amazon or any electronics retailer. LattePanda also released official recommended adapter ([US Standard][1]/[EU Standard][2]) and [MicroUSB cable][3] to make sure that you can hands-on the device without unnecessary troubles.

[1]: https://www.dfrobot.com/product-933.html
[2]: https://www.dfrobot.com/product-1504.html
[3]: https://www.dfrobot.com/product-1430.html

Here’s also a [list of LattePanda tested adapters and cables][4] available from Amazon. We measured the max output of every adapter listed using professional tools. For testing cables, we tested max current supplying capability. Even cut the cables to measure the diameter of the metal wire, which decide the max current load of cable. Just provide as a reference for choosing your power supply and cable.
[4]: /content/1st_edition/troubleshooting/#tested-power-accessories


## Booting the device

When you have everything ready, please follow simple instructions below to get started.

1.Connect the USB into the USB power adapter, and the microUSB into the micro USB port of the LattePanda (The micro USB port is located next to the SD card socket).

[If you are using the 7" display/touch panel, please connect it before powering on your device](http://docs.lattepanda.com/content/getStarted/screenAndTouchPanel/)

![img](http://www.lattepanda.com/wp-content/uploads/2016/05/plug-USB.jpg) 

2.When plugged in, you should see the red LED indicator lights up on the underside of the board. This means that the LattePanda is initializing. Wait patiently for a few seconds until the LED goes out.

**Note: Do not unplug the power cable while the system is running. (If the red LED is on, this indicates that the is system is running) **

![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0109.jpg)![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0106.jpg)

3.When the LED turns off, press and hold the power button for one second to turn the LattePanda on. You should see the LED lights up again.

The complete process is just the same as turning on a new computer! Then it will work!

## Other power supplies
When you want to power the system with a DC-DC adapter or a DC universal regulated switching power supply, the CN2 pins besides the MicroUSB port will be the best interface for that purpose. Using a barrel jack connector and dupont cables is also a very effective solution, [see this post on our forum for more information.](http://www.lattepanda.com/forum/viewtopic.php?f=10&t=797) 
