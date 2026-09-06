# Download Resources

## Official Windows 11 Recovery Image

This image comes with all hardware drivers and is ready to use, but it does not update in real-time. Therefore, if you need to install the latest version of the Windows OS, you will need to download it yourself and install the drivers.

| OS                     | Download From                                                |
| ---------------------- | ------------------------------------------------------------ |
| Windows 11 Pro 25H2 EN | [:material-dropbox: **Dropbox**](https://www.dropbox.com/scl/fo/4ieyf2tf2f1bsf4jj61eo/ANr83AdwO3NGWXORKCAk5TY?rlkey=9ad6xqunj2kyn6crdbhrbg1nf&st=7n3suwj9&dl=0) or [:material-google-drive: **Google Drive**](https://drive.google.com/drive/folders/1satoGiJN8G_zlrocMnXUKvyAvTzBa13F?usp=sharing) |

## Windows 11 Drivers

The Windows OS will automatically connect to the internet to fetch driver updates after installation. If you cannot connect to the Windows Update service, or if some drivers are still missing after the automatic update, you can download the offline driver packages here.


| Name                                | Version         | Size    | Download                                                                        |
|--------------------------------------------|-----------------|---------|---------------------------------------------------------------------------------|
| Intel Chipset Driver                       | 10.1.48.18 | 11 KB | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_Chipset_Driver_10.1.48.18.zip) |
| Intel Network Adapter Driver               | 2.1.5.7          | 37.2 MB    | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_Wired_Lan_driver_31.1_x64_win11.zip)|
| Intel Arc Graphics Driver         | Latest    | /    | [:material-download:](https://www.intel.com/content/www/us/en/download/785597/intel-arc-graphics-windows.html)[^1] |
| Realtek Audio Driver                       | 6.0.9782.1      | 37.6 MB | [:material-download:](../../assets/drivers/mu_ultra_edition/Realtek_Audio_Driver_6.0.9782.1.zip)                                                         |
| Touch Panel Driver                         | 1.3.2.0         | 63.4 KB | [:material-download:](../../assets/drivers/mu_ultra_edition/TouchPanel_1.3.2.0.zip)                                                         |
| Intel Serial IO Driver                    | 30.100.2416.40      | 445 KB  | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_Serial_IO_Driver_30.100.2416.40.zip)                                                         |
| Intel Management Engine Interface Driver   | 2512.7.3.0      | 2 MB | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_Management_Engine_Interface_Driver_2512.7.3.0.zip)                                                         |
| Intel Platform Monitoring Technology Driver       | 5.2.3.4   | 50.8 KB | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_Platform_Monitoring_Technology_Driver_5.2.3.4.zip)                                                         |
| Intel Smart Sound Technology Driver    | 20.42.12350.0      | 40.6 MB | [:material-download:](../../assets/drivers/mu_ultra_edition/Intel_SST_LNL_v20.42.12350.0_Prod.zip)                                                         |
| Intel NPU Driver   | Latest | / | [:material-download:](https://www.intel.com/content/www/us/en/download/794734/intel-npu-driver-windows.html)[^1] |

[^1]:Download from intel.com

*If the downloads from the link above are slow, you can also access the [GitHub repository](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Softwares/Drivers) to download them. The driver versions are the same.*

## Linux Drivers

Linux drivers are typically provided by the distribution via kernel and kernel module updates. Please use a newer kernel for full driver support and optimal hardware compatibility.

- **Minimum Kernel Requirement:** 6.11 or higher

The following two drivers need to be installed separately:

- Intel GPU Compute Driver

    - [Click here for installation guide](https://dgpu-docs.intel.com/installation-guides/index.html)

- Intel NPU Driver

    - [Click here for installation guide](https://github.com/intel/linux-npu-driver/releases)

## BIOS Firmware

We continuously maintain the BIOS firmware in our GitHub repository, where you can check its version history, release notes, lane function descriptions, and other related information.

- [Click here to view the GitHub repository](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Softwares/BIOS)


## Hardware Design Resources

We provide comprehensive design files to help you develop custom carrier boards and integrate the LattePanda Mu Ultra into your projects. All files are hosted on our official GitHub repository.

- [Edge Connector Pinout Definitions](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Electricals/Pinouts)
- [Open Source Carrier Board Design Files(KiCad)](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Examples)
- [KiCad Symbol & Footprint Libraries](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Libraries)
- [2D Drawings and 3D Models](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Mechanicals)


------

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }