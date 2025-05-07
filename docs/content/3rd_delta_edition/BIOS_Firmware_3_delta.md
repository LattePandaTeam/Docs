# BIOS Firmware
!!! Note "Firmware Compatibility"
    - The S70JR230 series BIOS firmware version is compatible with both the S70JR200 and S70JR120 series hardware versions. <br>
    - We suggest utilizing the most recent BIOS firmware version.

## **Standard BIOS**

!!! note ""
    ### :fontawesome-solid-microchip: **S70JR230-8G-A_20250416093826** (Latest BIOS version)
    - **Version:** S70JR230-8G-A
    - **Update Time:** 2025/4/16
    - **Size:** 6MB
    - **Update Information:**
        1. Modified Logo
        2. Modified the Main page of BIOS menu 
        3. Added Tcc Activation Offset option
        4. Added options for TP Controller, EDP Display, BIOS Write Protect, Screen Rotation, and Post Logo Message.
        5. Modified Network card info display
        6. Modified DMI information
        7. Update version S70JR230
    - **Checksum** 4B75
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/S70JR230-8G-A_20250416093826.zip)

??? Info "Legacy Version"
    ### :fontawesome-solid-microchip: **LP-BS-7-S70JR200-CN51G-8G-A**
    - **Version:** S70JR200-8G-A
    - **Update Time:** 2023/09/07
    - **Size:** 8MB
    - **Update Information:**
        * Added GPP_D6 level control option, default to low.
        * Update version S70JR120 to S70JR200
    - **Checksum** 83A8
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR200-CN51G-8G-A.zip)
    ### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-E**
    - **Version:** S70JR120-E
    - **Update Time:** 2023/05/22
    - **Size:** 8MB
    - **Update Information:**
        * Remove the fixed startup sequence to solve the boot loop issue for Ubuntu
        * add the Serial Port Console Redirection
    - **Checksum** 3BB1
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E.zip)
    ### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-D**
    - **Version:** S70JR120-D
    - **Update Time:** 2022/08/15
    - **Size:** 8MB
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
    #### :fontawesome-solid-microchip: **LP-BS-7-S70JR200-CN51G-8G_A_PCIE**
    > Based on the S70JR200-CN51G-8G-A BIOS version, this changes the SATA III lane in M.2 B Key to the PCIe x1 lane . So if you want to use the PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.

    - **Version:** S70JR200-8G_A_PCIE
    - **Update Time:** 2024/05/29
    - **Size:** 8MB
    - **Update Information:**
        * Change the SATA III lane in M.2 B Key to the PCIe x1 lane
    - **Checksum** ABF1
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR200-CN51G-8G_A_PCIE.zip)

??? Info "Legacy Version"
    #### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-E_ON_PCIE**
    > Based on the S70JR120-CN51G-E BIOS version, this changes the SATA III lane in M.2 B Key to the PCIe x1 lane . So if you want to use the PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.

    - **Version:** S70JR120-E_ON_PCIE
    - **Update Time:** 2023/05/22
    - **Size:** 8MB
    - **Update Information:**
        * Change the SATA III lane in M.2 B Key to the PCIe x1 lane
    - **Checksum** 3BB1
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E-ON_PCIE.zip)
    #### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-D-ON_PCIE**
    Based on the S70JR120-CN51G-D BIOS version, this changes the SATA III lane in M.2 B Key to the PCIe x1 lane . So if you want to use the PCIe signal in M.2 B key slot, please reflash your board with this BIOS firmware.
    
    - **Version:** S70JR120-D-ON_PCIE    
    - **Update Time:** 2022/11/02
    - **Size:** 8MB
    - **Update Information:**
        * Change the SATA III lane in M.2 B Key to the PCIe x1 lane
    - **Checksu:** CF92
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-D-ON_PCIE.zip)

### 2. Voltage Control for eDP Interface RST Pin

This will enable voltage control for the RST pin of the eDP interface, preventing the eDP screen from displaying monochrome intermittently.

S70JR200 series BIOS firmware already includes this feature, and it defaults to low level, ensuring your eDP screen operates normally.

??? Info "Legacy Version"
    #### :fontawesome-solid-microchip: **LP-BS-7-S70JR120-CN51G-E-T**
    > Based on the S70JR120-CN51G-E BIOS version, this adds the voltage control of the RST pin of the eDP interface. If your eDP screen displays monochrome in a cycle, please reflash your board with this BIOS firmware. <br>After the reflash, reboot the board. Continuous press 'DEL' key to enter into the BIOS setup, then choose Advanced -> Power Management -> GPP_D6 Output Level: LOW. Then save and exit. Reboot the board, your eDP screen should work fine now.

    - **Version:** S70JR120-E-T
    - **Update Time:** 2023/05/18
    - **Size:** 8MB
    - **Update Information:**
        * Add: Advanced->Power Management-> Add GPP_D6 Output Level
    - :fontawesome-solid-download: [**Download**](https://github.com/LattePandaTeam/LattePanda-Win10-Software/blob/master/BIOS%20for%20LattePanda%203%20Delta/LP-BS-7-S70JR120-CN51G-E-T.zip)

## Update the BIOS Firmware

Please refer to the [Update BIOS Firmware](bios_update_BIOS_firmware.md) section for detailed guide.


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }