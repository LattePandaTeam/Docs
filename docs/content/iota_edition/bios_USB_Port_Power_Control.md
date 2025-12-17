# BIOS Setup

## USB-A Port Power Control

Three USB Type-A ports on LattePanda Iota support power control.

**Path: Advanced --> Power Configuration --> Always On Double/Single  Deck USB Port**

![](../../assets/images/LattePanda 3 Delta/USBcontrol_BIOS_3Delta.webp){width="600" }

The default setting is **disabled**.

| Always On USB Port | Power Supply of the USB Port                                 |
| ------------------ | ------------------------------------------------------------ |
| Enabled            | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Shut Down Mode: <span style="color: green">:fontawesome-solid-check:</span> |
| Disabled           | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: :x: <br> Shut Down Mode: :x: |
|                    | <span style="color: green">:fontawesome-solid-check:</span> means **Enabled**, the USB port can output 5V power supply;<br> :x: means **Disabled** , the USB port can't output 5V power supply. |

!!! note

    - The USB-A double-deck connector contains two USB ports, and the power supply to both ports can only be controlled together, not individually.
    - If the LattePanda Iota is disconnected from the power supply, all USB-A ports are powered off by default when the LattePanda Iota is reconnected power supply and not turned on.


## 5V Pin Header Power Control

The 5V pin of the USB 2.0 pin header (marked with a red arrow in the picture below) on the LattePanda Iota also supports power control.

![](../../assets/images/LattePanda Iota/usb5vpinheader.webp){width="600" }

**Path: Advanced --> Power Configuration --> Always On USB Pin Header**

The default setting is **disabled**.

| Always On USB Pin Header | Power Supply of the 5V Pin                                   |
| ------------------------ | ------------------------------------------------------------ |
| Enabled                  | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Shut Down Mode: <span style="color: green">:fontawesome-solid-check:</span> |
| Disabled                 | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: :x: <br> Shut Down Mode: :x: |
|                          | <span style="color: green">:fontawesome-solid-check:</span> means **Enabled**, the 5V pin can output power;<br> :x: means **Disabled** , the 5V pin can't output 5V power supply. |

!!! note

    - If the LattePanda Iota is disconnected from the power supply, this 5V pin is powered off by default when the LattePanda Iota is reconnected power supply and not turned on.

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }