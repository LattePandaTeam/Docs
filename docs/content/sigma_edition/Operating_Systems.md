# Operating Systems

This chapter provides a comprehensive guide on how to install an operating system that is compatible with LattePanda Sigma. It covers the acceptable bootup media and provides instructions and resources for installing operating systems, as well as special considerations to keep in mind.

## Compatible System List

We've tested the basic functions of various operating systems on LattePanda Sigma and compiled a compatibility table.

| Operating System | Test Version | Compatibility | Note |
| ------- | ------- | :----: | --- |
| Windows 11 | 22H2 | 🟢    |      |
| Windows 10 | 22H2 | 🟢    |      |
| Windows Server 2022 | April 2023 | 🟡 | The NIC driver needs to be manually installed, please see [Installation Tutorial](Operating_Systems_WinServer.md) |
| Ubuntu  | 20.04.6 | 🟢    |      |
| Ubuntu  | 22.04.2 | 🟢    |      |
| Rocky Linux | 9.1 | 🟢    |      |
| Proxmox VE | 7.4  | 🟡    | Due to ack of driver support for the new generation of core graphics card, the GUI can not automatically start, please see [Installation Tutorial](Operating_Systems_PVE.md) |
| VMware ESXi | 8.0 U1  | 🟡 | Intel CPUs with P-core and E-core are not officially supported, you can install them by adding additional parameters, please see [Installation Tutorial](Operating_Systems_ESXi.md) |
| TrueNAS CORE | 13.0-U4 | 🟢 |      |
| Android x86 | 9.0-r2 | 🔴 |      |
| ChromeOS Flex | 15117.112.0 | 🔴 | |
| OPNsense | 23.1   | 🟢    |      |


!!! Note "Mark Pattern"

    - 🟢 Green indicates that the OS can be installed normally. Basic interfaces such as USB, HDMI, Ethernet, PCIe, and SATA can be identified and used without any additional steps.
    - 🟡 Yellow indicates that additional installation or setup steps are required before the system can be fully installed and operational.
    - 🔴 Red indicates that the OS cannot be installed completely, either due to hardware or software issues.

The E-core to P-core performance efficiency, Thunderbolt 4 interfaces and the drivers for integrated graphics cards are not included in the compatibility testing, as these can change rapidly with system updates. Additionally, the Thunderbolt 4 interface is difficult to use outside of the Windows desktop system, and therefore was not included in our testing range.

If you discover that an operating system has undergone a significant update and needs to be retested, or if there are other operating systems that you would like us to test, you can either create a new issue in the repository of this document (https://github.com/LattePandaTeam/Docs/issues) or email us at [techsupport@lattepanda.com](mailto:techsupport@lattepanda.com).



[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }