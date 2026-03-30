# Development Status

In order to fully exploit the expansion capabilities of the x86 CPU, LattePanda Mu has introduced almost all types of hardware interfaces for this CPU. This includes interfaces that would normally only be found on an ARM development board.

You can track the development status of LattePanda Mu's interface features here. As the BIOS is updated, this table will be filled up.

| Function                 | Min BIOS Version (Code) |         Status          |
| ------------------------ | :------: | :---------------------: |
| Power Control            |    A     |    :material-check:     |
| Serial Console           |    A     |    :material-check:     |
| Smart Fan                |    A     |    :material-check:     |
| Temp Sensor              | B |  :material-check:  |
| USB 3.2 10Gbps           |    A     |    :material-check:     |
| PCIe 3.0                 |    A     |    :material-check:     |
| SATA 3.0                 |    A     |    :material-check:     |
| USB 2.0                  |    A     |    :material-check:     |
| GPIO                     | B |    :material-check:     |
| GPIO with shift register |          | :material-cancel: |
| UART                     |    A     |    :material-check:     |
| I2C                      |    A     |    :material-check:     |
| SPI(only for BIOS Flash Chip)                      |    A     |    :material-check:     |
| HD Aduio                 |    A     |    :material-check:     |
| I2S                      |          | :material-cancel: |
| MIPI CSI-2               |          | :material-pause: |
| HDMI                     |    A     |    :material-check:     |
| Type-C                   |    A     |    :material-check:     |

- **Version Mapping:**
```text
A:
- LP-BS-S70NC1R200-SR-B
- LP-BS-S70NC1R200-DR-B
(+ SATA variants)

B:
- S70NC1R200-8G-A
- S70NC1R200-16G-A
(+ SATA variants)

Version priority: A (older) → B(latest)
```
BIOS version code is used here solely to simplify the presentation of BIOS version within the table. For detailed BIOS version release timelines and functional differences, please refer to our [BIOS repo](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Softwares/BIOS).

- **Status Description:**
    - :material-check: Already available
    
    - :material-timer-sand: Coming soon
    
    - :material-calendar: In development
    
    - :material-pause: Paused (restart date TBD)
    
    - :material-cancel: Canceled


[**:simple-discord: Join our Discord**](https://discord.gg/RkSvc9g7eU){ .md-button .md-button--primary }
