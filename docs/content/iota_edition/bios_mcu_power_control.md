# BIOS Setup

## MCU Power Control

The LattePanda Iota integrates an RP2040 MCU, which supports power control via BIOS settings and a DIP switch.

When the LattePanda Iota is running, sleeping, in shutdown, or in hibernation mode, the power supply to the RP2040 MCU is controlled by the BIOS settings.

**Path: Advanced --> Power Configuration --> MCU Power Control**

![](../../assets/images/LattePanda Iota/bios_mcupwrctl.webp){width="600" }

The default setting is **Auto**.

| MCU Power Control | Power Supply to the RP2040 MCU                               |
| ----------------- | ------------------------------------------------------------ |
| Enabled           | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Shut Down Mode: <span style="color: green">:fontawesome-solid-check:</span> |
| Auto              | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: :x: <br> Shut Down Mode: :x: |
| Disabled          | Running Mode: <span style="color: green">:x:</span> <br/> Sleep Mode: <span style="color: green">:x:</span> <br/> Hibernate Mode: :x: <br/> Shut Down Mode: :x: |
|                   | <span style="color: green">:fontawesome-solid-check:</span> means **Enabled**, the RP2040 MCU is powered on and run.<br> :x: means **Disabled** , the RP2040 MCU is powered off. |


When the LattePanda Iota is connected to power but not turned on, the RP2040 MCU's power supply is controlled by the DIP switch.

- The actuator controlling the MCU's power is in the lower half of the DIP switch, as highlighted by the red frame in the figure. The "MCU" label in the lower-right corner of the DIP switch indicates the MCU's power control.

    ![](../../assets/images/LattePanda Iota/mcu_dipsw.webp){width="300" }

- Set the actuator:

| Actuator Position | Power Supply of the RP2040 MCU                               |
| ----------------- | ------------------------------------------------------------ |
| OFF (Left Side)   | <span style="color: green">:fontawesome-solid-check:</span> Enabled |
| ON (Right Side)   | :x:Disabled                                                  |
  This setting take effect immediately, and is unaffected by the RTC battery.

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }
