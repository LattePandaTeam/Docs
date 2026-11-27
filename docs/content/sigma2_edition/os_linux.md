# Linux Installation

The LattePanda Sigma 2 is based on a standard x86 architecture processor, meaning the Linux installation process is identical to that of a regular laptop or desktop computer. It is fully compatible with most mainstream Linux distributions.

!!! note "Pre-installed Ubuntu OS"
    The 1TB SSD that ships with LattePanda Sigma 2 already has Ubuntu 26.04 LTS, GPU/NPU drivers and local AI models pre-installed. You only need this guide if you want to reinstall or install a different Linux distribution.

## Kernel Requirement

The Panther Lake platform requires a recent Linux kernel:

- **Recommended: Linux 7.0 or later** — shipped by default with **Ubuntu 26.04 LTS**, providing the complete support baseline for this platform, including targeted optimizations for the Xe3 integrated graphics and the NPU.
- **Minimum: Linux 6.17** — if you must stay on **Ubuntu 24.04 LTS**, use release 24.04.4 or later and install the HWE kernel stack (the factory 6.8 kernel does not properly support this platform); on a fully updated system this currently provides kernel 7.0:

    ```bash
    sudo apt update
    sudo apt install linux-generic-hwe-24.04
    ```

## General Installation Steps

1. **Download the Linux ISO**

    Visit the official website of your chosen Linux distribution and download the ISO image file. We recommend **Ubuntu 26.04 LTS (Desktop)**.

    [Click to Download Ubuntu Desktop](https://ubuntu.com/download/desktop)

2. **Create a Bootable USB Drive**

    Burn the downloaded ISO image to a USB flash drive. You can use tools like [**Rufus**](https://rufus.ie/) for this purpose.

3. **Boot from the USB Drive**

    Plug the bootable USB drive into your LattePanda Sigma 2, then power on or reboot. Immediately and repeatedly press the **++f7++** key to enter the Boot Device Selection Menu, select your USB flash drive, and press **++enter++**.

    !!! tip
        You can also press **++del++** to enter the BIOS setup and adjust the boot order there.

4. **Install the Operating System**

    Follow the on-screen instructions provided by the Linux installer to partition your M.2 SSD and complete the OS installation.

    !!! warning "Data Loss Warning"
        Installing a new OS will erase the pre-installed Ubuntu system and local AI models on the SSD. Please back up any data you need before proceeding.

5. **Post-Installation & Driver Updates**

    After the installation is complete, if you find that certain peripherals (such as Wi-Fi, Bluetooth, or audio) are not functioning properly, it is usually due to missing drivers in the default kernel.

    - **Update the System**: Run a full system update to fetch the latest packages.
    - **Upgrade the Kernel**: If issues persist, try upgrading to a newer Linux kernel, which often includes better support for newer hardware.
    - **Install Proprietary Drivers**: Some components may require proprietary drivers. Check your distribution's "Additional Drivers" utility.

## Intel GPU Compute Driver

Linux's default graphics drivers are only responsible for display output and do not include GPU compute libraries (OpenCL / Level Zero).

If you plan to run large language models locally (such as OpenVINO, llama.cpp) or perform other general-purpose GPU computing (such as PyTorch XPU or AI video processing), you need to install the official Intel compute runtime.

- [Click here for installation guide](https://dgpu-docs.intel.com/installation-guides/index.html)

## Intel NPU Drivers

- [Click here for installation guide](https://github.com/intel/linux-npu-driver/releases)

------

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }
