# Operating System

LattePanda Mu supports a wide range of operating systems. There is no need for any development or customization, just use the installation image provided by the operating system's official website.

## Official Support

We prioritize support for the following operating systems.

- Windows 10
- Windows 11
- Ubuntu 22.04 LTS (With HWE Kernel)
- Ubuntu 24.04 LTS

## Compatible List

We've tested the basic functions of various operating systems on LattePanda Mu and compiled a compatibility table.

The table will be continuously updated with new BIOS and bug fixes.

| Operating System    | Test Version | BIOS Version | Test Date | Compatibility |
|---------------------|--------------| :-----------:|:---------:|:--------------:|
| Windows 10          | 22H2         | A            | 2024/4/10 | 🟢            |
| Windows 11          | 23H2         | A            | 2024/4/10 | 🟢            |
| Windows Server 2022 | 21H2         | A            | 2024/4/10 | 🟢            |
| Ubuntu              | 22.04.2      | A            | 2024/4/10 | 🟢            |
| Debian              | 12.5         | A            | 2024/4/10 | 🟢            |
| Fedora              | 39           | A            | 2024/4/10 | 🟢            |
| Rocky Linux         | 9.3          | A            | 2024/4/10 | 🟢            |
| Arch Linux          | 20210401     | A            | 2024/4/10 | 🟢            |
| Gentoo Linux        | 20210331     | A            | 2024/4/10 | 🟢            |
| Proxmox VE          | 8.1-2        | A            | 2024/4/10 | 🟢[^1]        |
| TrueNAS SCALE       | 23.10.2      | A            | 2024/4/10 | 🟢            |
| TrueNAS CORE        | 13.0-U6.1    | A            | 2024/4/10 | 🔴            |
| StreamOS            | holo         | A            | 2024/4/10 | 🟢            |
| OpenWRT             | 23.05.3      | A            | 2024/4/10 | 🟢            |
| pfSense             | 2.7.2        | A            | 2024/4/10 | 🔴            |
| Linux Mint          | 21.3         | A            | 2024/4/10 | 🟢            |
| Manjaro Linux       | 23.1.4       | A            | 2024/4/10 | 🟢            |
| Pop!_OS             | 22.04        | A            | 2024/4/10 | 🟢            |
| deepin              | 20.09        | A            | 2024/4/10 | 🟢[^2]        |

[^1]: The official ISO installer does not allow installation into the eMMC.
[^2]: Current version lacks GPU driver

!!! Note "Mark Pattern"

    - 🟢 Green indicates that the OS can be installed normally. Basic interfaces such as USB, HDMI, PCIe, and SATA can be identified and used without any additional steps.
    - 🔴 Red indicates that the OS cannot be installed completely, either due to some issues.

If you discover that an operating system has undergone a significant update and needs to be retested, or if you wish for us to test additional operating systems, you may create a new issue in [LattePanda Mu repository](https://github.com/LattePandaTeam/LattePanda-Mu/issues), or you can email us at [techsupport@lattepanda.com](mailto:techsupport@lattepanda.com).

[**:simple-discord: Join our Discord**](https://discord.gg/RkSvc9g7eU){ .md-button .md-button--primary }
