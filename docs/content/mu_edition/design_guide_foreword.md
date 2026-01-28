# Preface

Welcome to the LattePanda Mu Carrier Board Design Guide.

This guide is designed to provide hardware engineers with critical design rules and recommendations to facilitate the efficient development of stable custom carrier boards. 

!!! note

    This guide is exclusively applicable to LattePanda Mu Compute Modules powered by Intel **N100** and **N305** processors.

## Pinout Documentation

Given the high-density edge connector and the versatile pin definitions of the LattePanda Mu, we have compiled the detailed pinintroduction into a separate document. Please consult [**LattePanda Mu Pinout Documentation**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Pinouts) thoroughly before starting your design.

## HSIO Multiplexing Rules

The High-Speed I/O (HSIO) lanes on the LattePanda Mu offer great flexibility, but their configuration mechanism requires specific attention:

- **Firmware Defined**: HSIO lanes can be multiplexed as USB 3.2, PCIe, or SATA. However, this allocation is **static** and determined entirely by the **BIOS firmware**.

- **Not Switchable in Menu**: HSIO functions **CANNOT** be configured dynamically via the BIOS Setup Menu.

- **Recommendation**: When assigning HSIO pins in your schematic, strictly refer to the [**HSIO Multiplexing**](hsio_multiplexing.md) chapter of this guide and check [**the documentation of our released BIOS firmware versions**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Softwares/BIOS) to ensure your hardware design matches the available firmware configurations  or determine if custom firmware is required to support your setup.

## Reference Design & PCB Requirements

- **Open Source Reference**: To better understand the circuit details, we strongly recommend reading this guide alongside the engineering documents (Schematic & PCB) of our open-source [**DFR1142 Lite Carrier Board**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Examples/%5BDFR1142%5DLite%20Carrier%20for%20LattePanda%20Mu).
- **PCB Stack-up**: The carrier board design involves high-frequency signals such as **HDMI 2.1, USB 3.2 (10Gbps), and PCIe 3.0**. Signal integrity is paramount.
  - **Layer Count**: A PCB stack-up of **4 layers or more** is highly recommended.
  - **Quality**: Proper impedance control and a continuous, solid GND reference plane are mandatory.

## Community & Support

This guide is a living resource and will be **updated irregularly** based on user feedback and firmware iterations.

If you encounter any issues, have suggestions, or want to share your new ideas, please join our vibrant community.

Now let's explore the charm of LattePanda Mu compute module together!🤝