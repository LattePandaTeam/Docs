# LattePanda IOTA Specification

| **Component**        | **Content**           | **Specs.**                                                   |
| -------------------- | --------------------- | ------------------------------------------------------------ |
| **Processor**        | CPU                   | Intel® Processor N150                                        |
|                      | Cores / Threads       | 4C / 4T                                                      |
|                      | Max Turbo             | 3.60 GHz                                                     |
|                      | Cache                 | 6 MB Intel® Smart Cache                                      |
|                      | Base Power            | 6 W                                                          |
|                      | Graphics              | Intel® Graphics                                              |
|                      | Max Dynamic Frequency | 1 GHz                                                        |
|                      | Execution Units       | 24                                                           |
|                      | Co-processor          | RP2040                                                       |
| **Memory**           | Technology            | LPDDR5 4800MT/s With In-band ECC                             |
|                      | Capacity              | 8GB, 16GB                                                    |
| **Storage**          | eMMC                  | 64GB, 128GB                                                  |
| **Wireless**         | Form Factor           | M.2 2230 Wireless Module (PCIe/CNVio)                        |
| **Display**          | HDMI Port             | HDMI 2.1, Up to 4096 x 2160 @ 60Hz                           |
|                      | Embedded Display Port | eDP 1.4b, 2 Lanes, Up to 1920 x 1080 @ 60Hz                  |
| **External I/O**     | USB Type-A            | 3 x USB 3.2 Gen 2 (10Gbps)                                   |
|                      | HDMI                  | HDMI 2.1                                                     |
|                      | Ethernet              | 1GbE RJ45 Port (Support WOL)                                 |
|                      | USB Type-C            | Power Input Only, PD 15V                                     |
|                      | Audio                 | 3.5mm Microphone Headphone Combo Connector                   |
|                      | TF Card               | TF Card Slot (USB2.0)                                        |
| **Internal I/O**     | Power Input           | PH2.0-4Pin Connector                                         |
|                      | Power Management      | MX1.25-10Pin Connector                                       |
|                      | Fan                   | MX1.25-4Pin Connector (Support PWM Control)                  |
|                      | GPIO                  | 2.54mm Pitch 36-Pin Header<br><span style="color:grey">Including RP2040, USB 2.0, SW/RST, S0/S3 Pins<span> |
|                      | eDP                   | 0.5mm Pitch 30-Pin FPC Connector, 2-Lane                     |
|                      | Touch                 | 0.5mm Pitch 6-Pin FPC Connector, I2C                         |
|                      | PCIe 3.0 x1           | 0.5mm Pitch 16-Pin FPC Connector<br/><span style="color:grey">Pinout same as Raspberry Pi's PCIe FPC Connector<span> |
| **Expansion Slot**   | M.2 E Key             | Type 2230, Support PCIe 3.0 x1,USB2.0, Intel CNVio           |
| **Security**         | TPM                   | Processor-integrated TPM 2.0                                 |
| **Power**            | Power Input           | USB Type C: PD 15V;<br/>PH2.0-4Pin Connector: 10~15V DC      |
|                      | RTC Battery           | 1.25mm Pitch 2-Pin Connector: 3V                             |
| **Operating System** | Microsoft Windows     | Windows 10, Windows 11                                       |
|                      | Linux                 | Ubuntu                                                       |
| **Environment**      | Operating Temperature | 0~60℃                                                        |
|                      | Relative Humidity     | 0%~80% RH                                                    |
| **Dimension**        | Board Size            | 88mm x 70mm x19mm(Bare Board Only)                           |
| **Model(SKU)**       | DFR1226               | LattePanda Iota(8GB/64GB, No Windows License Included)       |
|                      | DFR1226-ENT           | LattePanda Iota(8GB/64GB, w/ Win 11 IoT Enterprise 2024)     |
|                      | DFR1227               | LattePanda Iota(16GB/128GB, No Windows License Included)     |
|                      | DFR1227-ENT           | LattePanda Iota(16GB/128GB, w/ Win 11 IoT Enterprise 2024)   |