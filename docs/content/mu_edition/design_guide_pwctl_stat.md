# Power Control & Status

## Status Indication

LattePanda Mu x86 compute module provides two status output pins, **PSON** and **SLP_S4**, to indicate the current system power state (e.g., S0, S3). These pins can be used to control the power enable lines for carrier board peripherals or to drive status LEDs.

### Pin Definition

| Pin Name | Pin Number | Note                                               |
| -------- | ---------- | -------------------------------------------------- |
| PSON     | 5          | Output HIGH only when S0(Working)                  |
| SLP_S4   | 7          | Output HIGH only when S0(Working) and S3(Sleeping) |

💡 Due to the limited drive capability of the `PSON` and `SLP_S4` pins, an external NMOS is required to drive an LED indicator.

### Status Logic Table

| System State   | PSON Level | SLP_S4 Level | Note               |
| :------------- | :--------- | :----------- | :------------------------ |
| Working (S0)   | HIGH       | HIGH         | System running normally   |
| Sleep (S3)     | LOW        | HIGH         | Suspend to RAM            |
| Hibernate (S4) | LOW        | LOW          | Suspend to Disk           |
| Shutdown (S5)  | LOW        | LOW          | Soft OFF                  |
| Standby (G3)   | LOW        | LOW          | Powered but not booted |

## Power Control

LattePanda Mu x86 compute module provides signal lines for power and reset buttons, which function exactly like those on a standard laptop or desktop computer.

### Pin Definition

| Pin Name | Pin Number | Note                                          |
| -------- | ---------- | --------------------------------------------- |
| PWR_SW#  | 1          | System Power Switch; Internally 10K Pulled Up |
| RST_SW#  | 3          | System Reset Switch; Internally 10K Pulled Up |

### PWR_SW\#

- Connect to a physical power button. Active Low.
- A low pulse duration of **≥ 125ms** is recommended for reliable detection.
- Holding Low for **> 4 seconds** will trigger a forced shutdown.

### RST_SW\#

- Connect to a physical hard reset button. Active Low.
- A low pulse duration of **≥ 16ms** is recommended to ensure a successful reset.

### ESD Protection

Since buttons are frequently touched, they are vulnerable to electrostatic discharge (ESD). Adding ESD protection diodes is strongly recommended.

- Reverse Working Voltage: 5V

### FAQ

| Question                                  | Potential Cause / Check Point                | Explanation / Solution                                       |
| ----------------------------------------- | -------------------------------------------- | ------------------------------------------------------------ |
| CMOS Error appears after boot             | Low RTC battery voltage                      | Replace the RTC battery with a new one.                      |
|                                           | First initialization after BIOS update       | This is normal behavior. The message will disappear once initialization is complete. |
| Boot process is extremely slow every time | `PWR_SW#` pin held low (>10s) before booting | If the `PWR_SW#` is held for over 10s, it triggers a **BIOS Reset**. The subsequent boot requires full hardware re-initialization, causing a significant delay. |