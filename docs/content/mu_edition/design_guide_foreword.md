# Preface

Welcome to the LattePanda Mu Carrier Board Design Guide.

This guide is designed to provide hardware engineers with critical design rules and recommendations to facilitate the efficient development of custom carrier boards. 

!!! note

    This guide is exclusively applicable to LattePanda Mu Compute Modules powered by Intel **N100** and **N305** processors.

## Pinout Documentation

Given the high-density edge connector and the versatile pin definitions of the LattePanda Mu compute module, we provided the detailed pin introduction into a separate document.

Please consult [**LattePanda Mu Pinout Documentation**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Pinouts) thoroughly before starting your design.

## HSIO Multiplexing Rules

The High-Speed I/O (HSIO) lanes on the LattePanda Mu offer great flexibility, but their configuration mechanism requires specific attention:

- **BIOS Firmware Defined Entirely**: HSIO lanes can be multiplexed as USB 3.2, PCIe, or SATA. However, this allocation is **static** and determined entirely by the **BIOS firmware**. HSIO function and  PCIe bifurcation cannot be configured dynamically via the BIOS Setup Menu. Thus, customized BIOS firmware is required for any HSIO or PCIe bifurcation configuration changes. 
- **Recommendation**: When assigning HSIO pins in your schematic, strictly refer to the [**HSIO Multiplexing**](hsio_multiplexing.md) chapter of this guide and check [**Released BIOS Firmware Versions**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Softwares/BIOS) to ensure your hardware design matches the available firmware configurations  or determine if customized firmware is required to support your setup.

## Reference Design & PCB Requirements

- **Open Source Reference**: To better understand the circuit details, we strongly recommend reading this guide alongside the engineering documents (Schematic & PCB) of the open-source [**DFR1142 Lite Carrier Board**](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Examples).
- **PCB Stack-up**: The carrier board design involves high-frequency signals such as **HDMI 2.1, USB 3.2 (10Gbps), and PCIe 3.0**. Signal integrity is paramount.
    - **Layer Count**: A PCB stack-up of **4 layers or more** is highly recommended.
    - **Quality**: Proper impedance control and a continuous, solid GND reference plane are mandatory.



!!!tip
    If this is your first time designing a high-speed PCB, you can refer to [**My Journey in Designing a LattePanda Mu Mini Carrier**](https://www.lattepanda.com/forum/topic/335525) article published by our community member, which provide practical routing advice and include several excellent high-speed PCB layout guide documents.

## Community & Support

This guide is a living resource and will be **updated irregularly** based on user feedback and firmware iterations.

If you encounter any issues, have suggestions, or want to share your new ideas, please join our vibrant community.

Now let's explore the charm of LattePanda Mu compute module together!🤝