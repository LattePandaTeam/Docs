# Migration Guide from LattePanda V1 to LattePanda IOTA


To minimize your migration costs, the **LattePanda IOTA inherits the design principles of the LattePanda V1 in terms of physical dimensions, mounting holes, and interface layout**, ensuring that your existing structural molds, enclosures, cables, and peripherals can be adapted with little to no modification.

## Why Upgrade from V1 to IOTA?

The **LattePanda V1**, our first single-board computer (SBC) launched in 2015, gained widespread adoption in fields like smart terminals, mobile robots, industrial HMIs, and portable devices, thanks to its compact 88mm × 70mm size, full Windows 10 support, and excellent portability.

However, as modern applications place increasingly stringent demands on hardware performance and operating systems, the **Intel Atom® x5-Z8350**-based LattePanda V1 has shown clear limitations, such as:

-  **System Limitations**: Cannot be upgraded to the Windows 11 operating system.
-  **Memory Bottlenecks**: Memory is limited to a maximum of 4GB, making it difficult to handle multitasking workloads.
-  **Network Speed**: Network bandwidth is restricted to 100Mbps Ethernet.
-  **Supply Chain Challenges**: Core components are facing end-of-life, making it difficult to ensure a stable supply.

To address these issues, we are introducing the new-generation **LattePanda IOTA**—a palm-sized, high-performance single-board computer designed to meet the upgrade needs of existing customers and the demands of emerging applications.

- **Seamless Replacement**: Maintains the original form factor and interface layout for hardware-level compatibility.
- **Performance Leap**: Up to 8 times the CPU performance, with full support for the latest operating systems like Windows 11.
- **Stable Supply**: Provides long-term, stable supply assurance for enterprise customers.

## Specifications Comparison

|                     | **LattePanda IOTA**                                | **LattePanda V1**                           |
| ------------------- | -------------------------------------------------- | ------------------------------------------- |
| **Processor**       | Intel® Processor N150 (Twin Lake, Intel 7)         | Intel Atom® x5-Z8350 (Cherry Trail, 14nm)   |
| **Cores/Threads**   | 4C / 4T                                            | 4C / 4T                                     |
| **Max Burst Freq.** | 3.60 GHz                                           | 1.92 GHz                                    |
| **Cache**           | 6MB                                                | 2MB                                         |
| **Co-processor**    | RP2040                                             | ATmega32U4                                  |
| **Memory**          | LPDDR5, up to 16GB, supports IBECC                 | DDR3L, up to 4GB                            |
| **Storage**         | eMMC 64GB / 128GB                                  | eMMC 32GB / 64GB                            |
| **Wireless**        | M.2 E-Key Slot (supports PCIe/CNVio Wi-Fi modules) | Onboard Wi-Fi 802.11n (2.4GHz) Wi-Fi module |
| **Wired Network**   | 1GbE Ethernet (supports Wake-on-LAN)               | 100Mbps Ethernet                            |
| **Display Output**  | HDMI 2.1 (4K@60Hz) + eDP 1.4b (2-lane)             | HDMI 1.4 (1080P) + MIPI-DSI (4-lane)        |
| **USB Ports**       | 3× USB 3.2 Gen 2 (10Gbps)                          | 1× USB 3.0 (5Gbps) + 2× USB 2.0             |
| **Power Input**     | USB-C PD (15V) or 10–15V DC Input                  | Micro-USB (5V/3A)                           |
| **Security**        | TPM 2.0 (Integrated in Processor)                  | None                                        |
| **OS Support**      | Windows 10/11, Ubuntu 22.04 and later              | Windows 10, Ubuntu 16.04                    |
| **Operating Temp.** | 0°C ~ 60°C                                         | 0°C ~ 60°C                                  |

## What Stays the Same

To help you achieve a "plug-and-play" upgrade, the LattePanda IOTA maintains a high degree of consistency with the V1 in the following critical physical characteristics:

### 1. Physical Dimensions & Mounting Holes

- Board Dimensions: **88mm × 70mm**
- Four Corner Mounting Holes: **Identical in position and diameter**
- Board Thickness: **Approx. 19mm (including component height)**, slightly thinner than V1, making it compatible with most existing structural designs.

!!! Tips

    If using an active cooling solution, it is recommended to reserve at least 13mm of vertical space at the bottom of the board to accommodate the new cooling fan.

### 2. External Interface Layout

The positions of all core external interfaces listed below are identical to the V1:

- HDMI Port
- 3× USB Type-A Ports
- RJ45 Ethernet Port
- 3.5mm Audio Jack
- MicroSD (TF) Card Slot
- Power and Reset Buttons

## What's Improved

### 1. Significant Processor Performance Boost

|                                | LattePanda IOTA              | LattePanda V1                       |
| ------------------------------ | ---------------------------- | ----------------------------------- |
| Processor Model                | Intel N150 (Intel 7 Process) | Intel Atom® x5-Z8350 (14nm Process) |
| Max Frequency                  | 3.6 GHz                      | 1.92 GHz                            |
| Graphics Execution Units (EUs) | 24 EUs @ 1GHz                | 12 EUs @ 500MHz                     |
| Multi-Core Score (Geekbench 6) | 2820                         | 372                                 |

### 2. Comprehensive Memory & Storage Upgrade

|                  | LattePanda IOTA                                              | LattePanda V1    |
| ---------------- | ------------------------------------------------------------ | ---------------- |
| Memory Tech.     | LPDDR5 (4800MT/s)                                            | DDR3L (1066MT/s) |
| Max Capacity     | 16GB                                                         | 4GB              |
| ECC Support      | Supports IBECC                                               | Not supported    |
| Storage Capacity | Up to 128GB eMMC<br>Add SSD via [M.2 M-Key Exp. Board](https://www.dfrobot.com/product-2985.html) | Up to 64GB eMMC  |

### 3. Remarkable GPU Capability Enhancement

|                  | LattePanda IOTA                | LattePanda V1                          |
| ---------------- | ------------------------------ | -------------------------------------- |
| HDMI             | HDMI 2.1, supports **4K@60Hz** | HDMI 1.4, only supports **1080P@60Hz** |
| Embedded Display | eDP 1.4b (2-lane, 1080P)       | MIPI-DSI (4-lane, 1080P)               |

!!! Tips

    - Since the embedded display interface has been upgraded from MIPI-DSI to eDP, the **7-inch MIPI Display (FIT0477) and Touch Panel (FIT0478) originally used for LattePanda V1 are not directly compatible with LattePanda IOTA.**
    - We have prepared a perfectly matched replacement solution for you: the identically-sized **7-inch eDP Touch Display (FIT1030)**, which pairs perfectly with the LattePanda IOTA. Please visit the official website to view the [7-inch eDP Touch Display(FIT1030)](https://www.dfrobot.com/product-2993.html).

### 4. Changes in Power Supply Requirements

To match the increased performance, we have upgraded the power supply system, providing a higher power ceiling and more flexible input methods.

|                                                   | LattePanda IOTA                   | LattePanda V1             |
| ------------------------------------------------- | --------------------------------- | ------------------------- |
| External Power Port                               | USB-C (PD 15V)                    | Micro-USB (5V)            |
| Internal Power Connector                          | PH2.0-4Pin (10–15V Wide-Range DC) | CN2 Header (5V)           |
| Typical Power Consumption (BIOS default settings) | Idle: 4W; Full Load: 15W          | Idle: 2.5W; Full Load: 6W |

The IOTA requires a higher voltage to drive its powerful performance.

- **If you are using the external power port:** Your original Micro-USB cable and 5V USB adapter must be **replaced with a PD-compliant Type-C cable and a PD power adapter**.
- **If you are using the internal power connector:** Your original 5V DC power source must be **replaced with a 10V to 15V DC power source**.

### 5. Changes in Cooling Solution

Due to the significant performance increase, power consumption and heat generation have also risen. 

!!! Danger "Cooling Solution Required"

    LattePanda IOTA does not support operation without a heatsink. Must install a heatsink before powering on.

You can choose either of the following two heatsinks:

|                      | [Active Cooling Fan](https://www.dfrobot.com/product-2987.html) | [Passive Heatsink](https://www.dfrobot.com/product-2988.html) |
| -------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| SKU                  | FIT1027                                                      | FIT1028                                                      |
| Max Cooling Capacity | 15W                                                          | 10W                                                          |
| Features             | Ultra-thin, only ~11mm thick; supports PWM speed control     | Zero noise, completely silent operation                      |

:material-tools: Using the Device Enclosure for Cooling

Using your device's own metal enclosure for passive cooling is a viable option, but it **must be rigorously tested and validated** to ensure thermal performance is adequate. Please follow these key steps:

- You must use a thermal pad or thermal grease to fill the gap between the processor and the inner wall of the enclosure. This is critical for transferring heat from the processor to the enclosure.
- If your enclosure has limited size or insufficient surface area for heat dissipation, we strongly recommend that you enter the BIOS settings and limit the processor's TDP (PL1) to **6W**. This action will significantly reduce peak heat generation, prevent the enclosure from overheating, and ensure long-term system stability.

!!! Warning

    Before mass deployment, be sure to conduct full-load stress tests to ensure both the processor and enclosure temperatures remain within a safe and acceptable range.

### 6. Co-processor Upgrade

|                      | LattePanda IOTA                 | LattePanda V1         |
| -------------------- | ------------------------------- | --------------------- |
| Co-processor         | RP2040                          | ATmega32U4            |
| Core Architecture    | Dual-core 32-bit ARM Cortex-M0+ | Single-core 8-bit AVR |
| Clock Speed          | 133 MHz (overclockable)         | 16 MHz                |
| SRAM                 | 264 KB                          | 2.5 KB                |
| Flash                | 8 MB                            | 32 KB                 |
| Programming Language | MicroPython, Arduino C++        | Arduino C++           |
| I/O Level            | 3.3V                            | 5V                    |

!!! Danger "3.3V I/O Level Limit"

    - Since the co-processor has been upgraded to the RP2040, the operating voltage for its GPIO pins is **3.3V**, no longer 5V.
    - **Do not directly connect signals higher than 3.3V**, as this may damage the pins.
    - When connecting your existing 5V sensors, modules, or other peripherals, **you must use a level shifter** to match the voltage.
    - Your original code will need to be recompiled or properly ported to run, especially code that directly manipulates registers or relies on specific libraries.

### 7. Comprehensive Network Connectivity Upgrade

|                  | LattePanda IOTA                                              | LattePanda V1                       |
| ---------------- | ------------------------------------------------------------ | ----------------------------------- |
| Ethernet Network | 1GbE (Gigabit Ethernet), supports WOL                        | 100Mbps Ethernet                    |
| Wireless Network | M.2 E-Key Slot (supports Wi-Fi 5/6/7 modules)                | Onboard Wi-Fi 802.11n (2.4GHz only) |
| Cellular Network | Supported via [M.2 4G LTE Expansion Board (DFR1249)](https://www.dfrobot.com/product-2982.html) | Not supported                       |

The M.2 E Key slot design gives you the freedom to choose any M.2 2230 Wi-Fi module from Wi-Fi 5 to **Wi-Fi 7** based on your needs.

✅ **Recommended Pairing**: An Intel AX210 or AX211 M.2 module to achieve Wi-Fi 6 + Bluetooth 5.3 high-speed connectivity.

⚠️ **Antenna Installation**: Dual-band Wi-Fi modules typically require **2 antennas** to be connected to ensure stable signal transmission/reception and speed. If you plan to route the antennas to the exterior of a custom enclosure, remember to reserve an additional opening for the second antenna.

### 8. New Expansion Interfaces

The LattePanda IOTA not only achieves a leap in core performance but also introduces new expansion interfaces, broadening its application boundaries and giving your projects more flexibility and scalability.

#### PCIe 3.0 x1 Interface (FPC 16-Pin)

Supports high-speed peripheral expansion, with a pinout compatible with the Raspberry Pi's PCIe FPC connector.

🚀Recommended Expansion Boards:

- [**M.2 M-Key Expansion Board (DFR1250)**](https://www.dfrobot.com/product-2985.html): Connect an NVMe SSD to expand storage space, or an AI accelerator card for a massive boost in computing.
- [**51W PoE Expansion Board (DFR1248)**](https://www.dfrobot.com/product-2984.html): Complies with the IEEE 802.3bt standard, providing high-power delivery and Gigabit network transmission over a single Ethernet cable.

####  Power Management Interface (MX1.25-10Pin)

For connecting an power management system board.

🚀Recommended Expansion Board:

- [**18650 UPS Expansion Board (DFR1247)**](https://www.dfrobot.com/product-2983.html), to enable functions like automatic switching to backup power upon mains failure, charge management, and battery level monitoring.

####  RTC Battery Holder (1.25mm 2-Pin)

Connect a 3V CR2032 or similar coin cell battery with leads to ensure the system time is not lost after power down, improving log accuracy and system reliability.

The RTC battery comes with the board.

### 9. New DIP Switch

To make deployment and debugging more efficient, the LattePanda IOTA includes an onboard two-position DIP switch, allowing you to configure the following functions without entering the BIOS:

| Switch                | Function                                                     |
| --------------------- | ------------------------------------------------------------ |
| **S1: Auto Power-on** |                                                              |
| OFF (Default)         | The LattePanda board must be powered on by pressing the power button. |
| ON                    | The LattePanda board powers on automatically as soon as power is supplied. |
| **S2: MCU Control**   |                                                              |
| OFF (Default)         | When the LattePanda board is powered but off, the RP2040 MCU is unpowered and does not run. |
| ON                    | When the LattePanda board is powered but off, the RP2040 MCU is powered and runs. |

!!! note

    After the LattePanda board is powered on, the power supply to the RP2040 MCU must be configured in the BIOS.

## Migration Recommendations & Steps

1. **Review Requirements & Confirm Objectives**
   - Clarify migration needs: performance (e.g., 4K/multi-display/high-speed storage), system (is Win11 mandatory?), expansion scenarios (wired/wireless/cellular), power/thermal constraints, security/stability, interface quantity, etc.
   - Compile a list of all hardware/software resources used in the current project (custom peripherals, existing modules and enclosures, special firmware, scripts, etc.).
2. **Hardware Compatibility & Electrical Adaptation Check**
   - **Power Supply is Key**: IOTA's recommended power input is **12V**. If your previous setup used 5V, you must replace the power adapter/conversion interface to meet IOTA's requirements.
   - **Thermal Adaptation**: IOTA generates significantly more heat. You must upgrade to a recommended heatsink or optimize the passive cooling structure.
   - **Dimensions & Interface Verification**: Internal interfaces like GPIO headers and FPC connector pinouts have some changes. Verify if existing enclosures, structural parts, and cables are compatible, and be prepared to replace/customize cables, adapter boards, etc.
3. **Peripheral & Display Solution Adaptation**
   - **Display Interface Upgrade**: Users of the original MIPI display must switch to the official eDP display; the interface and mounting methods will need to be changed.
   - **Wi-Fi Antennas**: If you require high-performance wireless routing (Wi-Fi 6/7), you should plan for dual antenna holes and ensure a proper layout where the signal is not obstructed by a metal enclosure.
   - Test compatibility of external expansion boards, PCIe cards, wireless/cellular modules, and USB devices in advance, paying close attention to any modules with size or power supply issues.
4. **OS and Co-processor Firmware Migration**
   - It is recommended to use the official Windows 11 image, but you can also install Ubuntu 22.04+/24.04 LTS.
   - **Co-processor**: The co-processor is now the RP2040 (3.3V). Your original Arduino code for the ATmega32U4 (5V) needs to be **adapted and ported** (focus on library support, I/O level compatibility, differences in port manipulation, timing/interrupts, etc.).
   - Check the communication method, I/O level, and power supply between the original MCU and its sensors/peripherals. Be cautious and use level-shifting modules where necessary.
5. **Interface Function / Expansion Board Testing**
   - **Verify New Features**: Test new interfaces like PCIe, UPS, PoE, and the RTC battery holder one by one to ensure they function as expected.
   - Check if existing expansion boards and HAT modules can be used directly or if they require driver updates or pin adaptations.
   - Test the interplay between the DIP switch and BIOS settings to confirm that functions like auto-power-on and independent co-processor power are enabled as needed.
6. **Full Assembly & Load Testing**
   - Assemble the new hardware according to the planned structure.
   - Perform no-load and full-load tests upon power-up, paying close attention to power consumption, temperature rise, and noise to identify any shortcomings early.
   - Check the status of onboard LEDs, fans, and communication modules to troubleshoot potential compatibility issues one by one.

:handshake: **We Are Here to Support Your Migration**

We invite all LattePanda V1 users to join the new era of IOTA—enjoy stronger performance, a longer supply lifecycle, and richer expansion capabilities as we continue to build the next generation of intelligent devices together.

We understand that device upgrades involve multi-party coordination and validation cycles. To assist you, we offer:

- 📚 Migration Technical Support
- 🧪 Sample Request Service (for B2B customers)
- 🤝 Dedicated Account Manager (for B2B customers)
- 🔧 BIOS Customization Support

📩 **Contact our support team**: [solution@lattepanda.com](mailto:solution@lattepanda.com)