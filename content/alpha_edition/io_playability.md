# Hardware & Playability 

## Pinout Diagram

![](https://i.imgur.com/kor7zdt.png)

![](https://i.imgur.com/9vZ9sKQ.png)

## External Power Source Description

So the recommended standard power solution will definitely be the PD power adapter comes with Alpha package, which is an official LattePanda adapter. However, Alpha is designed for embedded application, like robotics and projects. So an external power solution will be necessary:
1. 12 volts DC In - JST PH2.0-4P connector
2. External Lipo battery support - 10p connector (details to be updated)

### 12 volts DC In Introduction

The voltage range of Alpha power input connector is 7.4~15 volts. So if you're choosing the lipo battery, it should be 2~4 cells. The standard power source is 3A@12volts. The booting power is like 10 watts. And operation power is like 5 watts without much load.

Relative discussions in Forum:
1. [Lipo battery from 10p power connector][1]
2. [Forum Discussion - Suggest a on/off/reset button for Alpha][2]
[1]: https://www.lattepanda.com/topic-f13t16675.html
[2]: https://www.lattepanda.com/topic-f23t17507.html

## M.2 Interface

On the board, we set two M.2 interfaces (One E key, one B & M key) which can connect M.2 2280 module (2280 denotes a module 22 mm wide and 80 mm long). 

![](https://i.imgur.com/rIH5QtK.jpg)

###Playability

####SSD & SATA



####Graphics Extension for GPU adapter card 

![](https://i.imgur.com/iXYEMum.png)

##USB 3.0 Interface

This is the most common interface. But all of them are USB 3.0 which means the speed of transfer data up to 5 Gbit/s (625 MB/s), 10 times faster than the USB 2.0 standard! Due to the high transmission speed, LattePanda can connect more accessories such as RealSense camera and VR.

![](https://i.imgur.com/zwyyMtD.jpg)

### Playability

####USB3.0 devices

Coming Soon...



##USB-C Interface

We have a USB-C interface on the board, formally known as **USB Type-C**. It can be used as a 12V power Input or use a USB-C hub to expend more interface like DP, DVI, SD card socket, etc. 

![](https://i.imgur.com/FDdrFEz.jpg)

###Playability

####USB C Hub 



## RS232

The RS-232 standard had been commonly used in computer serial ports. Thanks to their simplicity and past ubiquity, It is also used—particularly in industrial machines, networking equipment, and scientific instruments where a short-range, point-to-point, low-speed wired data connection is required. 

![](https://i.imgur.com/RU7P7nU.png)

###Playability

####RS-232 Sensor

![](https://i.imgur.com/7loMZ3h.png?1)