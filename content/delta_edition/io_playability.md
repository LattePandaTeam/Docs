# Hardware Interface and Playability

## Pinout and Hardware Diagram

![](/assets/images/alpha_delta_pinout.jpg)

!!! note
    [More pinout info and discussion](https://www.lattepanda.com/topic-f23t16906.html) shared by community member ccs_hello.


## External Power Source Description

So the recommended standard power solution will definitely be the PD power adapter comes with Delta package, which is an official LattePanda adapter. However, Delta is designed for embedded application, like robotics and projects. So an external power solution will be necessary: 12 volts DC In - JST PH2.0-4P connector
### 12 volts DC In Introduction

The voltage range of Delta power input connector is 7.4~15 volts. So if you're choosing the lipo battery, it should be 2~4 cells. The standard power source is 2A@12volts. The maximum booting power is about 10 watts. And operation power is about 3 watts without much load(CPU usage < 5%).

## M.2 Interface

There are M.2 connectors on the LattePanda Delta, one M key and one E key.
![](https://i.imgur.com/rIH5QtK.jpg)

### M Key
The M key interface just allows PCI-E X2.
#### **Storage**
* compatible with M.2 NVMe SSD

### E Key

The E key interface allows PCI-E X2, USB 2.0 or UART.


## USB 3.0 Interface

This is the most common interface. All three are USB 3.0 which allows transfering data up to 5 Gbit/s (625 MB/s), 10 times faster than the USB 2.0 standard! Due to the large bandwith, LattePanda can connect more accessories such as RealSense camera and virtual reality headsets.

![](https://i.imgur.com/zwyyMtD.jpg)


## USB-C Interface

There is a USB-C interface on the board, formally known as **USB Type-C**. It can be used as a 12V power Input or use a USB-C hub to expend more interface like DP, DVI, SD card socket, etc. 

![](https://i.imgur.com/FDdrFEz.jpg)

### USB C Hub

A USB Type C hub can be used with the LattePanda Delta. This can expand the number of ports you can use off just one connector. This can include SD/MicroSD, ethernet, USB, HDMI, ethernet, and many other ports.

### RS232

The RS-232 standard had been commonly used in computer serial ports. Thanks to their simplicity and past ubiquity,it is also used in industrial machines, networking equipment, and scientific instruments where a short-range, point-to-point, low-speed wired data connection is required. 

![](https://i.imgur.com/RU7P7nU.png)

### RS-232 Sensor

![](https://i.imgur.com/7loMZ3h.png?1)

## Related Links 
* [Integrated Development Environment](/content/delta_edition/ide/)
* [Powering LattePanda Delta](/content/delta_edition/powering/)

