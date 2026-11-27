# Power Supply

LattePanda Mu Ultra x86 compute module features a wide voltage input design. To ensure stable system operation, strictly adhere to the following design specifications.

## Voltage Requirements

| Parameter              | Min  | Typ       | Max   | Note                                  |
| :--------------------- | :--- | :-------- | :---- | :------------------------------------ |
| Recommended Input      | 12V  | 12V / 15V / 20V | 20V   | Preferred operating range             |
| Absolute Maximum Input | 9V | - | 22.3V | Exceeding limits triggers UVLO or OVP |
| Voltage Ripple         | -    |         | 200mV | Peak-to-Peak                          |

!!! warning

    At a 9V input, the power MOSFET overheats significantly when the processor operates under full load (PL1 at 30W), making sustained operation in this state unsafe. A minimum power supply of 12V is recommended.

=== "Without eDP display"

    For maximum compatibility and safety, maintaining the input voltage between 12V - 20V is strongly recommended.

=== "With eDP display"

    The maximum system input voltage is limited by the eDP display.<br>
    1. On the LattePanda Mu Ultra compute module, the eDP display converter is powered directly from the system power rail, without an intermediate voltage step-down circuit.<br>
    2. If your design includes an eDP display connected to the LattePanda Mu Ultra compute module, ensure that the system input voltage does not exceed the maximum input voltage supported by the display's converter.<br>

## Connection Guidelines

### Pin Definition

| Pin Name | Pin Number                                      | Note                                              |
| -------- | ----------------------------------------------- | ------------------------------------------------- |
| VIN | 251,253,255,257,259,<br>250,252,254,256,258,260 | Main Power Input; <br>Recommended Range: 12V ~ 20V |

Since there are many `GND` pins, they are not listed individually here; please refer to the [LattePanda Mu Ultra Pinout Documentation](https://github.com/LattePandaTeam/LattePanda-Mu-Ultra/tree/main/Electricals/Pinouts).

### Pin Connection

To minimize impedance and support high current, ALL `VIN` pins must be connected to the positive power rail, and ALL `GND` pins must be connected to the negative power rail.

## Power Requirements

The LattePanda Mu Ultra consumes significantly more power than the LattePanda Mu. The power supply design must account for sufficient power headroom.

- **Recommended power budget: 50W or above** for the compute module alone (excludes carrier board peripherals such as high-power USB devices and PCIe devices).
- If your carrier board powers additional high-power peripherals, add their worst-case consumption on top of this budget.

!!! warning "Insufficient Power Causes Instability"

    An under-rated power supply may cause unexpected shutdowns, reboots, or severe performance throttling under load. Validate your adapter and power path with full-load stress tests before mass production.
