# Hardware Interface and Playability

## Pinout and Hardware Diagram
### Front
![](https://dfimg.dfrobot.com/nobody/wiki/935b2c94421229da56fdc5225aae4e19.png)



### Back
![](https://dfimg.dfrobot.com/nobody/wiki/1f84fe5d91eb48868e04129e291b4d8c.png)



## Playability

![](https://dfimg.dfrobot.com/nobody/wiki/de9659247edcc66d0403391929b26c5b.jpg)

![](https://dfimg.dfrobot.com/nobody/wiki/885f80b3d185b22e4dfbd95ebe8f550e.jpg)


## External Power Source Description

The recommended standard power solution is most certainly the official PD power adapter which comes with your Delta. However, LattePanda 3 Delta is also designed for embedded applications, like robotic components and projects. So, an external power supply will be necessary: 12 Volt DC Input - JST PH2.0-4P connector
### 12 Volt DC Input Introduction

The voltage range of the Delta power input connector is 7.4~15 volts. So if you're choosing to use the lipo battery, you should use 2~4 cells. The standard power source is 2A@12volts. The maximum booting power required is about 10 watts, and the operational power required is about 3 watts with a low electrical load (with CPU power usage < 5%).

## M.2 Interface

There are M.2 connectors on the LattePanda 3 Delta: M key and B key.

### M Key
The M key interface only allows PCI-E X2.
#### **Storage**
* Compatible with M.2 NVMe SSD
#### **Other devices**
* eGPU is also possible to connect if you are using a high quality adapter like the ADT Link.
[Video link here to the eGPU](https://youtu.be/LMmm2V33cvs)
### B Key

The B key interface allows PCI-E X1, USB 2.0, USB3.0, SATA or SIM.

![](https://dfimg.dfrobot.com/nobody/wiki/d488b1066dee6a6ca818771a9cb8ceff.jpg)


## USB 3.2 Interface

This is the most common interface. All three are USB 3.2 which allows the transfer of data up to 5 Gbit/s (625 MB/s), 10 times faster than the USB 2.0 standard! Due to the large bandwith, LattePanda can connect to more accessories, such as RealSense camera and virtual reality headsets.

- USB 3.2 gen1 x2

- USB 3.2 gen2 x1

![](https://i.imgur.com/zwyyMtD.jpg)


## USB-C Interface

There is a USB-C interface on the board, formally known as **USB Type-C**. It can be used as a 12V power Input or as a USB-C hub to expand to more interfaces, like DP, DVI, SD card socket, and more. 

- Power Delivery
- Display Port
- USB 2.0

![](https://i.imgur.com/FDdrFEz.jpg)

### USB C Hub

A USB Type C hub can be used with the LattePanda 3 Delta. This can expand the number of ports you can use from just one connector port. This can include SD/MicroSD, ethernet, USB, HDMI, ethernet, and many other ports.



## Related Links 
* [Integrated Development Environment](/content/delta_edition/ide.md)
* [Powering LattePanda Delta](/content/delta_edition/powering.md)

