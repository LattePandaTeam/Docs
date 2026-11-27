# Download Resources

## Official Windows 11 Recovery Image

This image comes with all hardware drivers and is ready to use, but it is not updated in real time. Therefore, if you need to install the latest version of the Windows OS, you will need to download it yourself and install the drivers.

| OS | Download From |
| --- | --- |
| Windows 11 Pro EN | [:material-dropbox:Dropbox]() or [:material-google-drive:Google Drive]() |

## Windows 11 Drivers

The Windows OS will automatically connect to the internet to fetch driver updates after installation. If you cannot connect to the Windows Update service, or if some drivers are still missing after the automatic update, you can download the offline driver packages here.

| Name | Version | Size | Download |
| --- | --- | --- | --- |
| Intel Chipset Driver | 10.1.56.27 | 12.4 KB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_Chipset_10.1.56.27_Win11x64.zip) |
| Intel Innovation Platform Framework (IPF) Driver | 2.3.20201.4882 | 37.2 MB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_IPF_2.3.20201.4882_Win11x64.7z) |
| Intel Processor Power Management (PPM) Driver | 1.0.0.200 | 493.4 KB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_PPM_1.0.0.200_Win11x64.zip) |
| Intel Management Engine Interface Driver | 2546.8.9.0 | 1.2 MB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_ME_2546.8.9.0_Win11x64.zip) |
| Intel Platform Monitoring Technology (PMT) Driver | 7.3.10.3 | 53.2 KB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_PMT_7.3.10.3_Win11x64.zip) |
| Intel Serial IO Driver | 30.100.2534.18 | 448.4 KB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_SerialIO_30.100.2534.18_Win11x64.zip) |
| Intel Smart Sound Technology (SST) Driver | 20.43.12622.0 | 27.5 MB | [:material-download:](../../assets/drivers/sigma2_edition/Intel_SST_PTL_WCL_v20.43.12622.0.7z) |
| Realtek Audio Driver | 6.0.10013.1 | 21.9 MB | [:material-download:](../../assets/drivers/sigma2_edition/Realtek_Audio_6.0.10013.1_Win11x64.7z) |
| Touch Panel Driver | 1.3.2.0 | 68.2 KB | [:material-download:](../../assets/drivers/sigma2_edition/Touch_Panel_1.3.2.0.zip) |
| Intel Arc Graphics Driver | Latest | / | [:material-download:](https://www.intel.com/content/www/us/en/download/785597/intel-arc-graphics-windows.html)[^1] |
| Intel NPU Driver | Latest | / | [:material-download:](https://www.intel.com/content/www/us/en/download/794734/intel-npu-driver-windows.html)[^1] |
| Realtek Network Adapter Driver | Latest | / | [:material-download:](https://www.realtek.com/Download/List?cate_id=584)[^2] |
| Intel Wi-Fi Driver[^3] | Latest | / | [:material-download:](https://www.intel.com/content/www/us/en/download/19351/)[^1] |
| Intel Bluetooth Driver[^3] | Latest | / | [:material-download:](https://www.intel.com/content/www/us/en/download/18649/)[^1] |

[^1]: Download from intel.com
[^2]: Download from realtek.com — for Windows 11, choose the "Win11 Auto Installation Program (NetAdapterCx)" package
[^3]: Only required when you install an M.2 wireless module yourself (e.g. AX210 / AX211 / BE200)

**Installation method:** Unzip the driver package, enter the folder, then run `install.cmd` as administrator.

!!! tip "Driver Installation Order"
    We recommend installing the Intel Chipset Driver first, followed by the Intel Innovation Platform Framework Driver — the Intel Processor Power Management (PPM) Driver depends on it — and then the remaining drivers. Restart the system after all drivers are installed.

## Linux Drivers

The pre-installed Ubuntu OS already ships with all required drivers and works out of the box.

For other Linux distributions, drivers are typically provided by the distribution via kernel and kernel module updates. The Panther Lake platform requires **Linux kernel 6.17 or later**, and **Linux 7.0 or later is recommended** for complete hardware support (Ubuntu 26.04 LTS ships it by default). Older kernels — such as the factory 6.8 kernel of Ubuntu 24.04 LTS — do not properly support this platform.

!!! tip
    If you must stay on Ubuntu 24.04 LTS, use release 24.04.4 or later with the HWE kernel stack (`sudo apt install linux-generic-hwe-24.04`). See [Linux Installation](os_linux.md) for details.

The following two drivers need to be installed separately:

- Intel GPU Compute Driver

    - [Click here for installation guide](https://dgpu-docs.intel.com/installation-guides/index.html)

- Intel NPU Driver

    - [Click here for installation guide](https://github.com/intel/linux-npu-driver/releases)

------

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }
