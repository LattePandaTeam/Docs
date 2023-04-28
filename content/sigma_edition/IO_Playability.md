# Hardware Interface and Playability

## Pinout and Hardware Layout

### Top Layout
![LattePanda Sigma Layout Top](https://dfimg.dfrobot.com/nobody/wiki/9afe5bb244591c354c9a92d7efc53409.png)

![LattePanda Sigma Layout Top PIN headers](https://dfimg.dfrobot.com/nobody/wiki/68a59144587cff1269905b4f03b00ab4.png)



### Bottom Layout
![LattePanda Sigma Layout Bottom](https://dfimg.dfrobot.com/nobody/wiki/34c4c85170358d697b90217f25894f95.png)

![LattePanda Sigma Layout Bottom PIN headers](https://dfimg.dfrobot.com/nobody/wiki/926a00e03ca6a45d2af5c21d146c4126.png)

### Front Panel

![LattePanda Sigma Front Panel](https://dfimg.dfrobot.com/nobody/wiki/3a577ffa55f5083cd0b06086a4044d11.png)

### Back Panel

![LattePanda Sigma Back Panel](https://dfimg.dfrobot.com/nobody/wiki/1c74dca07c04412f0b3a3a59f8d4836c.png)


## Power Adapter

The recommended power adapter is undoubtedly the official DC adapter(19V DC, 4.74A, 90W) that comes with LattePanda Sigma. 

However, the power supply solutions of LattePanda Sigma can also be switched according to different application scenarios, such as Type-C, DC input JST PH 2.0 8-pin connector.

  The Specifications should be as follows:

* <font color=#FF000 >12~20V (no higher than 20V)</font>

* 90 watts or above is recommended 

  <center> ![](/assets/images/sigma/DCJackPinout.png)</center>

## M.2 Sockets

There are four M.2 sockets on LattePanda 3 Delta: M key x2, E key x1, B key x1.

### M.2 M Key
The M.2 M key sockets allow PCIe 4.0 x4 and PCIe 3.0 x4.

#### Compatible Device

##### Storage
* Compatible with M.2 NVMe SSD, Type 2280
##### Other Devices
* eGPU(you can also connect an eGPU to M.2 M key if you have a high-quality cable adapter like ADT Link)
[Video link here to the eGPU](https://youtu.be/LMmm2V33cvs)

### M.2 E Key

The M.2 E key socket allows PCIe 3.0 x1,USB2.0, Intel CNVio.

#### Compatible Device

##### Wireless Devices

* M.2 WiFi Module via CNVio, Type 2230: Intel AX211, AX201, etc.
* M.2 WiFi Module via PCIe, Type 2230: Intel AX210, AX200, etc.


### M.2 B Key

The M.2 B key socket allows SATA III/PCIe 3.0 x1, USB2.0, USB3.0, SIM.

#### Compatible Device

##### Storage

* M.2 SATA SSD, Type 2242/2252/2280

##### Wireless Devices

* M.2 4G Module (USB 2.0 lane)

* M.2 5G Module (USB 3.0 lane)

  Before using the 4G or 5G module, please insert a micro-SIM card into the SIM card slot, then assemble the antennas on the module. 

  <center> ![](/assets/images/sigma/InsertLteModule.png)</center>

  <center> ![](/assets/images/sigma/InsertSimCard.png)</center>

  Then install the driver of the module after logging into the OS.

  We have tested the following modules, which are working fine in the Windows 10/11 OS.

  * [Quectel EM05-E](https://www.quectel.com/product/lte-em05-series)
  
  * [SIMCom SIM7600G-H-M2](https://www.dfrobot.com/product-2643.html)
  
  * [Quectel RM500Q-GL](https://www.quectel.com/product/5g-rm50xq-series)
  
  * [SIMCom SIM8262](https://www.dfrobot.com/product-2636.html)
  
  


## USB Type-A Port

There are four USB Type-A ports on the LattePanda Sigma. Two USB 2.0 ports are located on the front panel, with a theoretical maximum throughput of 480Mbps/s each. The other two ports on the back panel are USB 3.2 Gen 2 ports, with ultra-high bandwidth delivering **up to 10Gb/s** throughput, which is twice as fast as USB 3.2 Gen 1 x1 (previously known as USB 3.0). 

These connectors are standard Type-A receptacles, allowing them to be connected to all types of USB 1.1,2.0,3.0 devices using standard-A USB 3.0 or USB 2.0 plugs.

All four USB Type-A ports on LattePanda Sigma support power control. 

The default configure is as following:

| OS State  | USB Port Power Control                                       |
| --------- | ------------------------------------------------------------ |
| Run       | Enabled                                                      |
| Sleep     | Enabled                                                      |
| Hibernate | Disabled                                                     |
| Shut Down | Disabled                                                     |
|           | Enabled means the USB port can output 5V power; <br>Disabled means the USB port cannot output 5V power. |

- When the LattePanda is disconnected from the power supply, then reconnected to the power supply but not turned on, the USB-A ports power control remain disabled.
- You can change the USB port power control in the BIOS. Please refer the [USB Ports Power Control](https://docs.lattepanda.com/content/sigma_edition/BIOS_Setup/#usb-ports-power-control) section.


## USB Type-C Port(Thunderbolt 4)

Both of the two USB Type C ports on LattePanda Sigma are full function Thunderbolt™ 4, which support power, USB data, video and PCIe. They have a 40Gbps (gigabits per second) bidirectional bandwidth. Thunderbolt 4 supports multiple 4K displays or a single 8K display, and it could be an ideal choice for video professionals and gamers. It can offer fast data transfer speeds, high-resolution display support, and fast charging simultaneously, enabling it to be used in a wide range of applications.

The following devices can be connected to Thunderbolt™ 4 ports:

- Thunderbolt™ devices (bearing the Thunderbolt™ logo). Thunderbolt™ 3 devices and cables are compatible with Thunderbolt™ 4 ports. Older Thunderbolt™ devices will also work but require an adapter.

- External monitors. One Thunderbolt™ 4 port can connect up to two 4K 60hz DisplayPort or HDMI monitors through a compatible dock or adapter.

- Storage. Connect a high-speed external Thunderbolt™ SSD to expand the storage capacity of your system and achieve speeds on par with internal drives.

- USB peripherals. Connect USB devices such as mice, keyboards, controllers, and headsets for gaming.

- PCI Express (PCIe) devices. Utilize a PCIe expansion chassis to access compatible PCIe devices.

- Networking. Connect to a high-speed 10 Gigabit Ethernet network via an adapter or use a Thunderbolt™ cable to connect two computers over a peer-to-peer network.

- Charging. Connect your phone, a display, a lightweight notebook PC (that requires less than 100W), and other compatible USB devices to charge them quickly.

  
  
  These two USB Type C ports on LattePanda Sigma can still output power when the OS in hibernate or shutdown state. If you want to disabled the power output in hibernate or shutdown state, please enabled EC EUP function in the BIOS.

## RJ-45 LAN Connector(2.5Gbps)

The LattePanda Sigma features two 2.5 Gigabit Ethernet ports, which use the Intel i225-V Ethernet Controller. These ports support various speeds, including 10Mbps, 100Mbps, 1Gbps, and 2.5Gbps. And with support for **Wake-On-LAN (WOL)**, LattePanda can be easily managed remotely, making it a perfect choice for network administrators or anyone who needs to remotely manage their device. 

Whether streaming high-definition video, downloading large files, or managing a network of devices, the LattePanda Sigma's 2.5GbE RJ45 ports are sure to provide the speed and reliability to get the job done.

<center> ![](/assets/images/sigma/RJ45LED.png)</center>

Two LEDs are built into the RJ-45 LAN connector, here are the LED states:

| LED           | LED Color | LED State | Meaning                                           |
| ------------- | --------- | --------- | ------------------------------------------------- |
| Link LED      | Green     | OFF       | LAN link is not established                       |
|               |           | ON        | LAN link is established                           |
|               |           | Blinking  | LAN activity is occurring                         |
| Data Rate LED | Yellow    | OFF       | 10/100 Mb/s data rate is selected, or no LAN Link |
|               |           | Green     | 1000 Mb/s or 2500 Mb/s data rate is selected      |


## SATA Port

LattePanda Sigma has a SATA 6Gb/s data port and a power port. It can support 2.5 or 3.5 inch Hard Drive. To use with a HDD , a SATA data cable and a PH2.0-4Pin to 15Pin SATA power cable is needed. 

The PH2.0-4Pin to 15Pin SATA power cable looks like the image below.

<center> ![](/assets/images/sigma/SataPowerCable.jpg)</center>

## Female Header Pins

<center> ![](/assets/images/sigma/GPIOPinOut.png)</center>

### Status Indication Pins

The S0, S3, S4 pins can indicate the current state of operating system through different output voltages. So the OS status can be obtained by reading these voltages or connecting LED indicators.

The voltage of these pins in different states are shown as follows:

|        | Run  | Sleep | Hibernate | Shut Down |
| ------ | ---- | ----- | --------- | --------- |
| S0 Pin | High | Low   | Low       | Low       |
| S3 Pin | Low  | High  | Low       | Low       |
| S4 Pin | Low  | Low   | High      | Low       |

* High: 5V; Low: 0V
* The power output of these pins has built-in 1K ohm resistors.

### 5V Output Pins

There are two 5V output pins in the female headers. They are automatically controlled according to different states. 

The power output of these two 5V output pins is as follows:

|                                      | Run     | Sleep   | Hibernate | Shut Down |
| ------------------------------------ | ------- | ------- | --------- | --------- |
| power output of these 5V output pins | Enabled | Enabled | Disabled  | Disabled  |

