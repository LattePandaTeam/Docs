# Development Status

In order to fully exploit the expansion capabilities of the x86 CPU, LattePanda Mu has introduced almost all types of hardware interfaces for this CPU. This includes interfaces that would normally only be found on an ARM development board.

But sorry, the firmware engineers couldn't keep up with the hardware engineers. Some of the features that have hardware pins reserved for them don't have firmware adaptations yet, and they don't work at the moment.

You can track the development status of LattePanda Mu's interface features here. As the BIOS is updated, this table will be filled up.

| Function                 | BIOS Ver | Status                |
|--------------------------|:--------:|:---------------------:|
| Power Control            | A        | :material-check:      |
| Serial Console           | A        | :material-check:      |
| Smart Fan                | A        | :material-check:      |
| Temp Sensor              | A        | :material-timer-sand: |
| USB 3.2 10Gbps           | A        | :material-check:      |
| PCIe 3.0                 | A        | :material-check:      |
| SATA 3.0                 | A        | :material-check:      |
| USB 2.0                  | A        | :material-check:      |
| GPIO                     | A        | :material-timer-sand: |
| GPIO with shift register | A        | :material-timer-sand: |
| UART                     | A        | :material-check:      |
| I2C                      | A        | :material-check:      |
| SPI                      | A        | :material-check:      |
| HD Aduio                 | A        | :material-check:      |
| I2S                      | A        | :material-calendar:   |
| MIPI CSI-2               | A        | :material-calendar:   |
| HDMI                     | A        | :material-check:      |
| Type-C                   | A        | :material-check:      |
| DisplayPort              | A        | :material-timer-sand: |

!!! Note

    :material-check: Already available
    
    :material-timer-sand: Coming soon
    
    :material-calendar: In development
    
    :material-block-helper: Development blocked
    

[**:simple-discord: Join our Discord**](https://discord.gg/RkSvc9g7eU){ .md-button .md-button--primary }
