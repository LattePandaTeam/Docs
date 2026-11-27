# USB 2.0

LattePanda Mu Ultra provides up to **6 independent** USB 2.0 lanes.

- Each supports High-Speed (480Mbps), backward compatible with Full-Speed (12Mbps) and Low-Speed (1.5Mbps).
- All ports operate in **Host Mode ONLY**. USB OTG is NOT supported.

## Design Guidelines

### Pin Definition

| Lane Name | Pin Number | Note                                                  |
| :-------- | :--------- | :---------------------------------------------------- |
| USB2_P1   | 109, 111   | USB 2.0 Port 1 — paired with TCP1 in default[^1] BIOS |
| USB2_P2   | 112, 114   | USB 2.0 Port 2 — paired with TCP0 in default[^1] BIOS |
| USB2_P3   | 73, 75     | USB 2.0 Port 3                                        |
| USB2_P4   | 79, 81     | USB 2.0 Port 4                                        |
| USB2_P5   | 76, 78     | USB 2.0 Port 5                                        |
| USB2_P6   | 82, 84     | USB 2.0 Port 6 — Bluetooth for CNVio wireless modules |

!!! note "Default Port Assignments"

    - `USB2_P1` (pins 109/111) and `USB2_P2` (pins 112/114): In the default[^1] BIOS firmware, these two ports are associated with the USB Type-C ports (TCP1 / TCP0). When the Type-C function (TCP1 / TCP0 Port) is not in use, they can be used directly as generic USB 2.0 ports — no BIOS modification is required.
    - `USB2_P6` (pins 82/84): Can be used directly as a generic USB 2.0 port. Only when a CNVio wireless module (e.g., Intel AX211) is installed must this port be used for the module's Bluetooth communication.

!!! danger "Migrating from LattePanda Mu?"

    The USB 2.0 port numbering differs between the LattePanda Mu and Mu Ultra, and pins 67/69/70/72 (USB 2.0 on the Mu) are PCIe Lane 2 on the Mu Ultra. If you are adapting an existing Mu carrier board, refer to the [Migration Guide](migration_guide_mu_to_mu_ultra.md#8-pcie-lane-2-occupies-the-mus-usb-20-pins-67697072) before reusing any USB 2.0 routing.

[^1]: [Default BIOS firmware](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Softwares/BIOS/DFLT)

### Polarity Check

The USB 2.0 controller does not support automatic differential pair polarity inversion.

- Strictly ensure one-to-one mapping between the compute module and the USB device.
- Do not swap `D+` and `D-`. Incorrect polarity will result in communication failure.

```text  
+-----------------------+                    +-----------------------+  
|   Compute Module      |                    |      USB Connector    |  
|                       |                    |                       |  
|                       |                    |                       |
|                       |                    |                       |  
|     [ USB D+ ] -------+--------------------+---- -> [ USB D+ ]     |  
|                       |                    |                       |  
|                       |                    |                       |  
|     [ USB D- ] -------+--------------------+------> [ USB D- ]     |  
|                       |                    |                       |  
+-----------------------+                    +-----------------------+  
```

### No AC Coupling

- Do not place series AC coupling capacitors on USB 2.0 differential lines. Direct connection is required.

### Power Requirement

One USB 2.0 port (single device only): Recommended minimum current is 0.5A.

### ESD Protection

Since USB ports are subject to frequent hot-plugging, they are vulnerable to Electrostatic Discharge (ESD). Adding ESD protection diodes on data lines is highly recommended.

- **Recommended Specifications**:
    - Junction Capacitance: < 3 pF
    - Reverse Working Voltage: 5V (Minimum), 5.5V (Recommended)

### Layout Guidelines

| Parameter              | Requirement                |
| :--------------------- | :------------------------- |
| Differential Impedance | 90Ω                        |
| Intra-pair Skew        | < 15 mil                   |
| Reference Plane        | Continuous GND Recommended |
