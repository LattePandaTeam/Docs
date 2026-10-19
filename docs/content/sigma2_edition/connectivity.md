# Multiple Network

## Ethernet

LattePanda Sigma 2 features **dual 10Gb Ethernet RJ45 ports** (RTL8127), providing high-throughput, low-latency wired connections for servers, NAS, and data-intensive AI workloads. It also supports **Wake-On-LAN (WOL)** for remote device management.

### Compatible Speed

Supports 10/100/1000/2500/5000/10000Mbps Ethernet speeds.

### LED Function

![RJ45_LED](../../assets/images/Sigma2/rj45_led.webp)

| LED           | LED Color | LED State | Meaning                                                    |
| :------------ | :-------- | :-------- | :--------------------------------------------------------- |
| ACT LED       | Yellow    | Blinking  | LAN activity is occurring.                                 |
| Data Rate LED | Green     | OFF       | No LAN Link.                                               |
|               |           | Green     | 10/100/1000/2500/5000/10000 Mb/s data rate is established. |

## WiFi

Insert a wireless network module into the **M.2 E-Key slot** (PCIe 4.0 x1, USB 2.0, CNVio3, Type 2230) on LattePanda Sigma 2, and install the antennas.

Then install the driver. Now you can go online!

![M.2_E_Key](../../assets/images/Sigma/Sigma%20SSD%20E%20key.webp)

### Compatible Modules

The M.2 E-Key slot supports M.2 Type 2230 PCIe and CNVio3 wireless network modules. The following are some compatible modules that we have tested:

- [Intel AX210](https://www.dfrobot.com/product-2325.html)
- Intel AX211
- [Intel BE200](https://www.dfrobot.com/product-2877.html)

------

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }
