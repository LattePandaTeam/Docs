# Internal Interface

## M.2 E Key Socket

LattePanda Iota features a dedicated M.2 E Key socket for wireless connectivity modules.

![](../../assets/images/LattePanda Iota/m2_e_key.webp){: style="width:400px; height:auto;"}

!!! note ""
    
    #### <span style="color: green">:material-check-circle:</span> **Compatible Device**
      - **Wireless Modules:** M.2 2230 form factor (e.g., Intel AX210, MEDIATEK MT7922, MEDIATEK MT7925)
      - **Other E Key Devices:** CNVi modules, combo Wi-Fi/BT cards

    Tested Modules

    - [**:material-cart: WiFi Module for LattePanda / NVIDIA Jetson Nano**](https://www.dfrobot.com/product-1998.html)
    - [**:material-cart: M.2 (A+E Key) AX210 WiFi 6E Network Card**](https://www.dfrobot.com/product-2325.html)
    - [**:material-cart: M.2 E Key WiFi 7 Wireless Network Card**](https://www.dfrobot.com/product-2877.html)



## PCIe x1 FPC Expansion Interface

LattePanda Iota provides a flexible PCIe x1 expansion interface using the same FPC (Flexible Printed Circuit) pinout as the Raspberry Pi.

![](../../assets/images/LattePanda Iota/pciex1.webp){width="400"}

This interface exposes a native <span style="color: rgba(225, 103, 13);">**PCIe 3.0 x1 lane**</span> for high-speed expansion.
    
#### <span style="color: green">:material-check-circle:</span> **Compatible Device**
- [**M.2 M Key Expansion Board**](https://www.dfrobot.com/product-2985.html) (for NVMe SSDs or other M.2 devices)
- [**PoE Expansion Board**](https://www.dfrobot.com/product-2984.html) (Power over Ethernet for network connectivity)



## RTC Battery Connector

LattePanda Iota features a dedicated 3V RTC battery connector designed to accept the included CR2032 coin cell battery.

![](../../assets/images/LattePanda Iota/RTC_battery_slot.webp){width="400"}

- **Voltage:** 3.0V
- **Included Battery:** CR2032
- **Purpose:** Maintains real-time clock and BIOS settings during power-off

![](../../assets/images/LattePanda Iota/iota_RTC_battery.webp){width="400"}

!!! warning
    Do not connect batteries exceeding 3.3V. Ensure correct polarity when inserting the battery.

## GPIO Header

The GPIO header on LattePanda Iota integrates both USB 2.0 signals and RP2040 microcontroller pins for flexible I/O control and peripheral expansion.

![](../../assets/images/LattePanda Iota/GPIO2.webp){width="400"}

#### USB 2.0 Pins
- D+ / D- lines exposed for custom USB device integration
- Can be used to interface with USB-to-serial converters, custom HID devices, or debug probes

![](../../assets/images/LattePanda Iota/GPIO_USB.webp){width="400"}

You can also connect our dedicated [**:material-cart: 4G LTE Expansion Board**](https://www.dfrobot.com/product-2982.html) to expand cellular connectivity.

#### RP2040 Microcontroller Pins

- Built-in RP2040 chip (same as Raspberry Pi Pico) for real-time I/O control
- Programmable via C/C++ or MicroPython
- Direct access to multiple GPIOs, I2C, SPI, UART, and ADC pins
- Communicates with main CPU via USB CDC (appears as a serial device)




[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }



