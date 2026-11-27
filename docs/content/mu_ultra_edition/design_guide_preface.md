# Preface

Welcome to the LattePanda Mu Ultra Carrier Board Design Guide.

This guide is designed to provide hardware engineers with critical design rules and recommendations to facilitate the efficient development of custom carrier boards.

!!! note "Applicability"

    - This guide is exclusively applicable to LattePanda Mu Ultra Compute Modules powered by Intel **Core Ultra 5 226V** and **Core Ultra 7 256V** processors.
    
    - If you are migrating an existing LattePanda Mu carrier board design, please read the [**Migration Guide from LattePanda Mu to LattePanda Mu Ultra**](migration_guide_mu_to_mu_ultra.md) first — it explains which parts of your design can be reused and which must be changed.

## Boot Storage Requirement

The LattePanda Mu Ultra has **no onboard eMMC or other boot storage**. The carrier board must route at least one PCIe lane to a bootable storage device, typically an **NVMe SSD connected through an M.2 M-Key socket**. Without a boot storage device, the compute module cannot load an operating system.

## Pinout Documentation

Given the high-density edge connector and the versatile pin definitions of the LattePanda Mu Ultra compute module, we provided the detailed pin introduction into a separate document.

Please consult [**LattePanda Mu Ultra Pinout Documentation**](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Electricals/Pinouts) thoroughly before starting your design.

## 1.8V I/O Voltage Domain

Unlike the LattePanda Mu, many low-speed ports on the LattePanda Mu Ultra operate at **1.8V** instead of 3.3V, including GPIO, UART, I2C, HD Audio, and the BIOS flash SPI bus.

!!! danger "Do Not Connect 3.3V Logic to 1.8V Pins"

    Connecting 3.3V logic directly to these 1.8V pins may permanently damage the compute module. Always use a level shifter or a 1.8V-native peripheral. Refer to the [**LattePanda Mu & Mu Ultra Pinout Comparison**](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/blob/main/Electricals/Pinouts/LattePanda_Mu_and_Mu_Ultra_Pinout_Comparison.xlsx) — the yellow-highlighted rows list all affected pins.

## High-Speed PCB Design Requirements

The carrier board design involves high-frequency signals such as **HDMI 2.1, USB 3.2 (10Gbps), and PCIe 4.0 (16 GT/s)**. Signal integrity is paramount.

- **Layer Count**: A PCB stack-up of **4 layers or more** is highly recommended.
- **Quality**: Proper **impedance control** and a **continuous, solid GND reference plane** are mandatory.
- **Length Matching**: Strict length matching is crucial to minimize skew. Accurate **intra-pair length matching** for differential signals (P/N traces) is mandatory to maintain phase alignment.

## Community & Support

This guide is a living resource and will be **updated as needed** based on user feedback and firmware iterations.

If you encounter any issues, have suggestions, or want to share your new ideas, please join our vibrant community.

Now let's explore the charm of LattePanda Mu Ultra compute module together!🤝

------

[**:simple-discord: Join our Discord**](https://discord.gg/RkSvc9g7eU){ .md-button .md-button--primary }