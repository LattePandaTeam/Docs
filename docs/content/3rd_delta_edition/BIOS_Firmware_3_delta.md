# BIOS Firmware
## **Standard BIOS**

!!! note ""
    #### :fontawesome-solid-microchip: LP-BS-7-S70JR120-CN51G-E
    - **Version:** CN51G-E
    - **Update Time:** 2023/05/22
    - **Size:** 8MB
    - **Update Information:**
        * Remove the fixed startup sequence to solve the boot loop issue for Ubuntu
        * add the Serial Port Console Redirection
    - **Checksum** 3BB1
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E.zip)
??? Info "Legacy Version"
    ### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-D**
    - **Version:** CN51G-D
    - **Size:** 8MB
    - **Update Time:** 2022/08/15
    - **Update Information:**
        * Fix the issue that NVME SSD works abnormally when booting after power failure
        * Modify the frequency of eMMC to default to HS400
        * Secure boot is turned off by default
        * Add the patch that Windows Boot Manager can not boot
        * Modify the USB3 Port2 mode to USB 3.1 Gen2
        * Change the reading method of the MAC address
        * Add Windows Recovery function, shortcut key F9
        - Checksum：38B2
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-D.zip)

## **Optional BIOS**

### 1. PCIe x1 Support in M.2 B key slot

!!! note ""
    #### :fontawesome-solid-microchip: LP-BS-7-S70JR120-CN51G-E_ON_PCIE
    > Based on the S70JR120-CN51G-E BIOS version, this changes the SATA III lane in M.2 B Key to the PCIe x1 lane . So if you want to use the PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.

    - **Version:** CN51G-E_ON_PCIE
    - **Update Time:** 2023/05/22
    - **Size:** 8MB
    - **Update Information:**
        * Change the SATA III lane in M.2 B Key to the PCIe x1 lane
    - **Checksum** 3BB1
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E-ON_PCIE.zip)

??? Info "Legacy Version"
    :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-D-ON_PCIE**
    Based on the S70JR120-CN51G-D BIOS version, this changes the SATA III lane in M.2 B Key to the PCIe x1 lane . So if you want to use the PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.

    - **Version:** CN51G-D-ON_PCIE
    - **Size:** 8MB
    - **Update Time:** 2022/11/02
    - **Update Information:**
        * Change the SATA III lane in M.2 B Key to the PCIe x1 lane
    - **Checksu:** CF92
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-D-ON_PCIE.zip)

### 2. Voltage Control for eDP Interface RST Pin

!!! note ""
    #### :fontawesome-solid-microchip: LP-BS-7-S70JR120-CN51G-E-T
    > Based on the S70JR120-CN51G-E BIOS version, this adds the voltage control of the RST pin of the eDP interface. If your eDP screen displays monochrome in a cycle, please reflash your board with this BIOS firmware.

    - **Version:** CN51G-E-T
    - **Update Time:** 2023/05/18
    - **Size:** 8MB
    - **Update Information:**
        * Add: Advanced->Power Management-> Add GPP_D6 Output Level
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E-T.zip)

## Update the BIOS Firmware

Please refer to the [Update BIOS Firmware](bios_update_BIOS_firmware.md) section for detailed guide.


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }