# Hardware Interface and Playability

## Pinout and Hardware Diagram
### Front
![](https://dfimg.dfrobot.com/nobody/wiki/935b2c94421229da56fdc5225aae4e19.png)



### Back
![](https://dfimg.dfrobot.com/nobody/wiki/1f84fe5d91eb48868e04129e291b4d8c.png)



## Hardware Overview

<center>![](/assets/images/ConnectorFront_3Delta.jpg)</center>

<center>![](/assets/images/ConnectorBack_3Delta.jpg)</center>


## Power Adapter Description

The recommended power adapter is undoubtedly the official USB Type-C PD adapter that comes with your LattePanda 3 Delta. 

However, LattePanda 3 Delta is also designed for embedded applications, like robotic components, mobile or portable devices. So, an external power supply will be necessary: 12 Volt DC Input - JST PH2.0-4P connector.

  The Specifications should be as follows:

* 11-15V(no higher than 15V)

* 24 watts or above is recommended 

* Recommended power source: 12V, at least 2A

## M.2 Socket

There are two M.2 sockets on LattePanda 3 Delta: M key and B key.

<center>![](/assets/images/M2sockets_3Delta.png)</center>

### M.2 M Key
The M.2 M key socket only allows PCIe 3.0 x2.

#### Compatible Device

##### Storage
* Compatible with M.2 NVMe SSD
##### Other Devices
* eGPU(you can also connect an eGPU to m.2 M key if you have a high-quality cable adapter like ADT Link)
[Video link here to the eGPU](https://youtu.be/LMmm2V33cvs)
### M.2 B Key

The M.2 B key socket allows SATA III, USB 2.0, USB3.0, and SIM.

#### Compatible Device

##### Storage

* Compatible with M.2 SATA SSD

##### Wireless Devices

* M.2 4G Module (USB 2.0 lane)

* M.2 5G Module (USB 3.0 lane)

  Please insert a micro-SIM card before using 4G or 5G module.


## USB Type-A Port

There are three USB Type-A ports on LattePanda 3 Delta. One of them is a USB 3.2 gen2 x1 port with an ultra-high bandwidth, delivers up to 10Gb/s throughput, which is twice faster than USB3.2 gen1 x1 (previously known as USB3.0). The remaining two are USB3.2 gen1 x1 ports. 

<center>![](/assets/images/USB_A_3Delta.jpg)</center>


## USB Type-C Port


There is a USB Type-C port on the LattePanda 3 Delta. It can be connected to a PD power adapter or a USB-C hub to expand to more ports, like DP, DVI, USB, SD/MicroSD, etc. 

The USB Type-C port supports simultaneous use of following three functions.

- Power Delivery
- DP 1.4
- USB 2.0


## Female Header Pins

### Status Indication Pin

The S0, S3, S4 pins can indicate the current state of operating system through different output voltages. So the OS status can be obtained by reading these voltages or connecting LED indicators.

The voltage of these pins in different states are shown as follows:

|        | Run  | Sleep | Hibernate | Shut Down |
| ------ | ---- | ----- | --------- | --------- |
| S0 Pin | High | Low   | Low       | Low       |
| S3 Pin | Low  | High  | Low       | Low       |
| S4 Pin | Low  | Low   | High      | Low       |

* High: 5V; Low: 0V

### Auto 5V Output Pin

There are two 5V output pins in the female headers. They are automatically controlled according to different states. 

Other 5V & 3.3V output pins are always turned on unless you enable Deep Sleep EUP function in BIOS.

<center>![](/assets/images/Auto5VPowerPin_3Delta.jpg)</center>

The power output of these two 5V output pins is as follows:

|                                      | Run     | Sleep   | Hibernate | Shut Down |
| ------------------------------------ | ------- | ------- | --------- | --------- |
| power output of these 5V output pins | Enabled | Enabled | Disabled  | Disabled  |

### Audio Output Pin

LattePanda 3 Delta has two-channel audio output pins with audio power amplifier and the output power of each channel can be up to 2W. You can directly connect two speakers to play sound. When the headphone is inserted, the audio output automatically switches to the headphone jack.

<center>![](/assets/images/audioput_pin_3Delta.jpg)</center>
