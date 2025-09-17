# BIOS Setup

## USB-A Port Power Control Settings

Three USB Type-A ports on LattePanda 3 Delta support power control. Every port can be configured independently.

**Path: BIOS Setup --> Advanced --> USB Configuration --> Always On USB Port**

  ![](../../assets/images/LattePanda 3 Delta/USBcontrol_BIOS_3Delta.webp){width="600" }

The default setting is **disabled**.

| Always On USB Port | Power Control of the USB Port                                |
| ------------------ | ------------------------------------------------------------ |
| Enabled            | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Shut Down Mode: <span style="color: green">:fontawesome-solid-check:</span>  |
| Disabled           | Running Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Sleep Mode: <span style="color: green">:fontawesome-solid-check:</span> <br> Hibernate Mode: :x: <br> Shut Down Mode: :x: |
|                    | <span style="color: green">:fontawesome-solid-check:</span> means **Enabled**, the USB port can output power;<br> :x: means **Disabled** the USB port can't output power. |

  ![](../../assets/images/LattePanda 3 Delta/usb_number_3Delta.webp){width="600" }

!!! info "**Attention:** "

    - If LattePanda is disconnected from the power supply, all USB A ports are powered off by default when the lattePanda connects power supply again and is not turned on. The MCU power control is also the same.
    - The USB2.0 pin in the female header doesn't support power control.


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }