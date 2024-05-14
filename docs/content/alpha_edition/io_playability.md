# Hardware Interface and Playability

## Pinout and Hardware Diagram
### Front
![Pinout Top](../../assets/images/alphadelta%20top%20pinout%2020200811.webp)  

### Back
![Pinout Bot](../../assets/images/alphadelta%20bot%20pinout%2020200811.webp)


!!! note
    [Click here for more pinout info and discussions](https://www.lattepanda.com/topic-f23t16906.html) shared by community member ccs_hello.

![](../../assets/images/Alpha_BIOS_Tutorial/yf6xnt5fm3u3nphftvtr.webp)


## External Power Source Description

The recommended standard power solution is certainly the PD power adapter which comes with Alpha package, since it is an official LattePanda adapter. However, the Alpha is designed for embedded applications, like robotics and projects, so an external power solution will sometimes be necessary, and can be supplied by:
1. A power supply connected to the 12 volt DC Input - JST PH2.0-4P connector
2. External LiPo battery, which has a 10p connector (more details to come in future updates)

!!! note
    In some countries there may not be any power adapter in the LattePanda Alpha package. In this case you need to buy an adapter separately.

### 12 Volt DC Input Introduction

The voltage range of the Alpha power input connector is 7.4~15 volts. So, if you're choosing to use the LiPo battery, you should attach 2~4 cells. The standard power source required must have 3A running at 12volts. The power required to boot up the LattePanda SBC is approximately 10 watts, and the operation power needed is approximately 5 watts without a very high electrical load.

Related Discussions in Forum:

1. [Lipo battery from 10p power connector][1][newtab]
2. [Forum Discussion - Suggest an on/off/reset button for Alpha][2][newtab]
3. [DIY 18650 battery pack for Lattepanda Alpha][3][newtab]

[1]: https://www.lattepanda.com/topic-f13t16675.html
[2]: https://www.lattepanda.com/topic-f23t17507.html
[3]: https://www.lattepanda.com/topic-f11t20950.html

## M.2 Interface

There are M.2 connectors on the LattePanda Alpha: one M key and one E key.
![](../../assets/images/Alpha_BIOS_Tutorial/rIH5QtK.webp)

### M Key
The M key interface allows for PCI-E X4 or SATA storage.
#### **Storage**
* M.2 NVMe SSD
* SATA III SSD

#### M.2 To PCI-E Adapter

A PCI-E adapter can be versatile, allowing you to add hardware typically dedicated for full size motherboards to a single board computer form factor. This includes cards such as desktop graphic cards.\
**Note: When using a PCI-E adapter, only 4 lanes are usable.**

#### Cool Topics in Forum

1. [How to attach both NVMe and Graphics card](https://www.lattepanda.com/topic-f23t17965.html)


### External GPU
There are several videos on Youtube where desktop graphic cards are used on the LattePanda. An example video can be found [here](https://www.youtube.com/watch?v=mKchBNFBeTE).
![](../../assets/images/Alpha_BIOS_Tutorial/iXYEMum.webp)

### E Key

The E key interface allows PCI-E X2, USB 2.0, I2C, or UART.

#### NVMe SSD In E Key Slot

It is possible to connect an NVMe SSD to the E key slot with this adapter [Sintech E Key To NVMe adapter](https://www.amazon.com/Sintech-NGFF-NVME-WiFi-Cable/dp/B07DZF1W55).

!!! question
    It's possible to extend a 2nd network card and graphics card with a converter card. There will undoubtedly be more m.2 products appearing in the market in the future, like movidius ai accelerators. Feel free to share your ideas with us via this [github docs repository](https://github.com/LattePandaTeam/Docs).


## USB 3.0 Interface

This is the most common interface. All three ports are USB 3.0, which allows you to transfer data at up to 5 Gbit/s (625 MB/s), which is 10 times faster than the USB 2.0 standard! Due to the large bandwidth, LattePanda can connect to even more accessories, such as RealSense camera and virtual reality headsets.

![](../../assets/images/Alpha_BIOS_Tutorial/zwyyMtD.webp)


## USB-C Interface

There is a USB-C interface on the board, formally known as **USB Type-C**. It can be used as a 12V power Input or as a USB-C hub to communicate with interfaces like DP, DVI, SD card sockets, and much more. 

![](../../assets/images/Alpha_BIOS_Tutorial/FDdrFEz.webp)

### USB C Hub

A USB Type C hub can be used with the LattePanda Alpha. This can expand the number of ports you can use with just one connector. This includes SD/MicroSD, ethernet, USB, HDMI, ethernet, and many other ports.

### RS232

The RS-232 standard had been commonly used in computer serial ports. Thanks to their simplicity and past ubiquity, it is also used in industrial machines, networking equipment, and scientific instruments where a short-range, point-to-point, low-speed wired data connection is required. 

![](../../assets/images/Alpha_BIOS_Tutorial/RU7P7nU.webp)

### RS-232 Sensor

![](../../assets/images/Alpha_BIOS_Tutorial/7loMZ3h.webp)

## Related Links 
* [Integrated Development Environment](ide.md)
* [Powering the LattePanda Alpha](powering.md)
