# FAQ


!!! question " Could I downgrade it to Windows 10, or install Linux Mint on it?"
    **:bulb:** Since the LattePanda Mu uses an x86 Intel processor, it supports Windows 10, Windows 11, and most Linux systems. We provide the [**operating system compatibility list**](https://docs.lattepanda.com/content/mu_edition/os_compatible/) for your reference.

!!! question " What type of slot can the LattePanda Mu use?"
    **:bulb:** As long as it is a 260-pin SO-DIMM laptop DDR4 memory slot. The official recommended material selection is **TE 2309411-1**.

!!! question " Is the Mu compatible with existing 260-pin SO-DIMM carrier boards?"
    **:bulb:** The LattePanda Mu compute module's slot can use a standard 260-pin SO-DIMM DDR4 memory slot, but its pin configuration is uniquely defined by LattePanda. It is not compatible with the standard DDR4 pin configuration or other compute modules that use the same slot! Forcing it in and powering it on will damage the board! You can refer to the [LattePanda Mu pinout table](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Pinouts).

!!! question " If I buy the Mu module + lite carrier + 19V power adapter, can I then install any PCIe card to it and it's works?  "
    **:bulb:** If you want to let the PCIe card work, please use the 12V power adapter. The lite Carrier does not have an onboard 12V buck circuit, only 12V overvoltage protection. When the voltage of the connected power adapter exceeds 13.8V, the power supply to the PCIe section will automatically disabled, so there's no need to worry about damage to the PCIe card. The LattePanda Mu can accept a maximum voltage of 20V, so aside from the PCIe card, all other parts can function normally. However, please note that the maximum input voltage should not exceed 20V! 


!!! question " After installing Linux, why does the display only allow scaling options, and no audio output from HDMI?"
    **:bulb:** Please confirm that your Linux kernel is version 6 or higher. If anyone encounters such problems on Linux OS, try updating the kernel first.

!!! question " Which REFCLK corresponds to whcih PCIe lane, and which CLKREQs are bound to which REFCLK?"
    **:bulb:** In practice you can ignore the binding between REFCLK and PCIe, the BIOS defaults to enable 100MHz clock output for all REFCLKs. The binding between the REFCLK and the PCIe is only of interest if it is required to support the full ASPM L1s feature (including CLKREQ). Considering that not many PCIe peripherals actually support the full ASPM feature set and may introduce additional compatibility issues, it is recommended to assume that they do not exist. CLKREQ is fixed bound to the same numbered REFCLK.

!!! question " What are the power supply and requirements for using a GPU card on the Mu's carrier board?"
    **:bulb:** If you are installing a graphics card with no additional power supply, then the TDP of the graphics card will not exceed 75W, and a 12V 120W power supply will be sufficient. If you are installing a graphics card that requires additional power, it is recommended to use a high-power ATX supply to power both the graphics card and the carrier board. All standard PCIe cards are designed for 12V, so you must use the 12V power adapter.


!!! question " On the Carrier Lite board, when the Power Mode Jumper is set to SLP, the system enters S3 sleep mode correctly, why the fan speeds up to full speed and doesn't stop? In PSON mode, the fan turns off as expected."
    **:bulb:** The lite carrier is designed to be as simple as possible. When the power mode is set to continuous power during sleep, the fan remains continuously powered. However, when it enters sleep mode, the fan PWM signal stops, and the fan goes haywire. This is a hardware "feature" that cannot be resolved with a BIOS update.

!!! question " I flashed the specific BIOS firmware and set the DIP switches. The name and version on the BIOS setup page is also correct, but the specific function does not work. How can I solve this?"
    **:bulb:** Using the AFU update in Windows OS doesn't seem to update the ME area. So, refer to [Update BIOS Firmware section]() to use FPT to fully update the BIOS, or directly [use an external programmer to burn the firmware into the BIOS flash chip](https://www.lattepanda.com/forum/topic/336081).

!!! question " What are the 8 header pads on the bottom of the LattePanda Mu module?"
    **:bulb:** eSPI contact, can be used to listen to the communication between CPU and SuperIO, common use is to connect the diagnostic card.

!!! question " Is the SIO_UART considered COM1 or COM0?"
    **:bulb:** COM1 in Windows, /dev/ttyS0 in Linux.

!!! question " What are the 8 header pads on the bottom of the LattePanda Mu module?"
    **:bulb:** eSPI contact, can be used to listen to the communication between CPU and SuperIO, common use is to connect the diagnostic card.

!!! question " What is the specific function of BIOS_SEL, SPI_CS, SPI_CS2 pin on the SPI port of the Mu module?"
    **:bulb:** SPI_CS is for external BIOS chip. Pull BIOS_SEL high for Mu's onboard BIOS chip, low for external carrier board BIOS chip. You can refer the schematic of full function carrier board.

!!! question " Can I use 1 REFCLK for 2 PCIe device that use different lanes?"
    **:bulb:** No, if you need to split a REFCLK into multiple REFCLKs, you must use the HCSL clock buffer, e.g. 9DBL411, LMK00334. The PI6C20400 mentioned by CrashSys(Community Member) is indeed the cheapest option.

!!! question " How does ECC work on the Mu if the CPU and RAM itself does not have support for it?"
    **:bulb:** The N100 processor supports in-band ECC, which does not have additional data lines or memory particles, but instead transfers data and ECC code sequentially within the 64bit bit width, so enabling IB ECC will reduce memory performance. The NVIDIA A100 uses the same in-band ECC technology (obviously the HBM memory has more bandwidth to absorb the loss).Note that this has nothing to do with the on-die ECC in the DDR5 specification. Linux systems with ECC turned on and a newer kernel installed should see messages from the EDAC module in the kernel log. If ECC detects an error, it will also be shown in the EDAC module's log.

!!! question " Can I use 1 REFCLK for 2 PCIe device that use different lanes?"
    **:bulb:** No, if you need to split a REFCLK into multiple REFCLKs, you must use the HCSL clock buffer, e.g. 9DBL411, LMK00334. The PI6C20400 mentioned by CrashSys(Community Member) is indeed the cheapest option.

!!! question " What is the PCB layer stackup of the lite carrier board?"
    **:bulb:** It is the JLC04161H-7628 from JLCPCB.

!!! question " Can I use 1 REFCLK for 2 PCIe device that use different lanes?"
    **:bulb:** No, if you need to split a REFCLK into multiple REFCLKs, you must use the HCSL clock buffer, e.g. 9DBL411, LMK00334. The PI6C20400 mentioned by CrashSys(Community Member) is indeed the cheapest option.

!!! question " Does each HSIO lane on the LattePanda Mu module have the decoupling capacitor in series?"
    **:bulb:** No! The HSIO signal pins, after being routed out from the CPU, go directly to the edge connector without passing through decoupling capacitors. Therefore, you need to place the appropriate decoupling capacitors on the carrier board.

!!! question " If I directly power the BIOS Flash chip with a programmer, will it activate other circuits on the Mu module or carrier board?"
    **:bulb:** On the Mu module, or full function carrier board, the 3.3V power goes through a diode before reaching the power pin of the BIOS Flash chip, which prevents reverse current flow. Therefore, powering the BIOS Flash chip with a programmer will not activate other circuits.

If you have problem when using LattePanda Mu, please feel free to open your issue via [**LattePanda Forum**](https://www.lattepanda.com/forum/) or join our [**Discord**](https://discord.com/invite/UHgtJbf978).

We would greatly appreciate your invaluable contributions to the refinement of the tutorials by submitting tutorial enhancements or updates to the [**docs repository**](https://github.com/LattePandaTeam/Docs). 

Appreciate for your great support! And enjoy tinkering!


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }