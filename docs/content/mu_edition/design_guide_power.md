# Power Supply

LattePanda Mu x86 compute module features a wide voltage input design. To ensure stable system operation, strictly adhere to the following design specifications.

## Voltage Requirements

| Parameter              | Min  | Typ       | Max   | Note                                  |
| :--------------------- | :--- | :-------- | :---- | :------------------------------------ |
| Recommended Input      | 9V   | 12V / 15V | 20V   | Preferred operating range             |
| Absolute Maximum Input | 7.6V | -         | 22.3V | Exceeding limits triggers UVLO or OVP |
| Voltage Ripple         | -    | -         | 200mV | Peak-to-Peak                          |

✅**For maximum compatibility and safety, maintaining the input voltage between 9V - 20V is strongly recommended.**

!!! warning "eDP Display's Maximum Power Supply Voltage "
    
    In the hardware design of the LattePanda Mu compute module, the power supply for the eDP display's converter is directly to the system power rail without any voltage step-down circuitry.
    
    So if your design includes an **eDP display** connected to the LattePanda Mu compute module, the overall system voltage range will be limited by the eDP display's converter maximum input voltage.


## Connection Guidelines

### Pin Definition

| Pin Name | Pin Number                                      | Note                                              |
| -------- | ----------------------------------------------- | ------------------------------------------------- |
| VIN      | 251,253,255,257,259,<br>250,252,254,256,258,260 | Main Power Input; <br>Recommended Range: 9V ~ 20V |

Since there are many `GND` pins, they are not listed individually here; please refer to the [LattePanda Mu Pinout Documentation](https://github.com/LattePandaTeam/LattePanda-Mu/tree/main/Electricals/Pinouts).

### Pin Connection

To minimize impedance and support high current, ALL **VIN** pins must be connected to the positive power rail, and ALL **GND** pins must be connected to the negative power rail.

## Power Budget

The power supply design must account for sufficient power headroom. Excluding power consumption from carrier board peripherals (e.g., high-power USB devices, PCIe cards), the minimum power requirements for the Compute Module itself are:

- LattePanda Mu (Intel N100): > 10W
- LattePanda Mu (Intel N305): > 15W
