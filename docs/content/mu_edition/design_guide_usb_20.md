# USB 2.0

LattePanda Mu provides up to **8 independent** USB 2.0 lanes.

- Each supports High-Speed (480Mbps), backward compatible with Full-Speed (12Mbps) and Low-Speed (1.5Mbps).
- All ports operate in **Host Mode ONLY**. USB OTG is NOT supported.

## Design Guidelines

### Pin Definition

| Lane Name | Pin Number | Note           |
| :-------- | :--------- | :------------- |
| USB2_P1   | 67, 69     | USB 2.0 Port 1 |
| USB2_P2   | 73, 75     | USB 2.0 Port 2 |
| USB2_P3   | 79, 81     | USB 2.0 Port 3 |
| USB2_P4   | 70, 72     | USB 2.0 Port 4 |
| USB2_P5   | 109, 101   | USB 2.0 Port 5 |
| USB2_P6   | 112, 114   | USB 2.0 Port 6 |
| USB2_P7   | 76, 78     | USB 2.0 Port 7 |
| USB2_P8   | 82, 84     | USB 2.0 Port 8 |

!!! warning "Restriction on USB2_P6"
    
    - The default BIOS configures `USB2_P6` specifically for use with USB Type-C port. So with the default BIOS, `USB2_P6` port **CANNOT** be used directly as a generic Type-A USB 2.0 port.
    - To use it as a standard Type-A USB 2.0 port, **customized BIOS firmware** is required.

### Polarity Check

The USB 2.0 controller does not support automatic differential pair polarity inversion.

- Strictly ensure one-to-one mapping between the compute module and the USB device.
- Do not swap `D+` and `D-`. Incorrect polarity will result in communication failure.

```text  
+-----------------------+                    +-----------------------+  
|   Compute Module      |                    |      USB Device       |  
|      (Host)           |                    |      (Slave)          |  
+-----------------------+                    +-----------------------+  
|                       |                    |                       |  
|   [ USB D+ ] ---------+--------------------+---------> [ USB D+ ]  |  
|                       |                    |                       |  
|                       |                    |                       |  
|                       |                    |                       |  
|   [ USB D- ] ---------+--------------------+---------> [ USB D- ]  |  
|                       |                    |                       |  
|                       |                    |                       |  
+-----------------------+                    +-----------------------+  
```

### No AC Coupling

- Do not place series AC coupling capacitors on USB 2.0 differential lines. Direct connection is required.

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



