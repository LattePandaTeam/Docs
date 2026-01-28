# BIOS Flash

When the **BIOS_SEL** pin is pulled low, LattePanda Mu Compute Module bypasses its internal flash chip and boots from the SPI flash chip on the carrier board.

This feature allows you to flash custom BIOS firmware directly to the carrier board's flash chip without needing to modify the BIOS on the computing module itself.

## Design Guidelines

### Pin Definition

| Pin Name     | Pin Number | Note                                                   |
| :----------- | :--------- | :----------------------------------------------------- |
| BIOS_SEL | 133        | Control pin for BIOS ROM Selection (100K Pull-up internal) |

### Component Selection

| Parameter        | Requirement    |
| :--------------- | :------------- |
| Voltage          | 3.3V           |
| Capacity         | 16 MB (128 Mb) |
| Recommended Part | W25Q128JVSIQ   |

### Power Sequencing

!!! warning

    - The 3.3V power supply to the flash chip MUST be stable AT THE SAME TIME as power is applied to the Compute Module (VIN).

- Do NOT power the flash chip after the Compute Module has booted.
- The compute module attempts to read the BIOS flash upon power-up. If the flash chip is unpowered at that moment, the read fails, and the system may not boot.

### Boot Selection Circuit

Leveraging the internal pull-up resistor on `BIOS_SEL`, the carrier board design can be simplified:

- **No External BIOS**: Leave `BIOS_SEL` Floating (NC).
- **With External BIOS**: Use a 2-Pin jumper/switch.
  - **Pin 1**: Connect to `BIOS_SEL`
  - **Pin 2**: Connect to `GND`
  - Short (Jumper On) → `BIOS_SEL` LOW Level → Boot from Carrier Board's Flash
  - Open (Jumper Off) → `BIOS_SEL` HIGH Level → Boot from Compute Module's Flash

💡 The external pull-up resistor for `BIOS_SEL` on the carrier board can be omitted.

### Series Resistors
Series resistors are recommended on SPI signal lines (CLK, IO0~IO3) to reduce reflections.

- Value: 15Ω is recommended.
- Placement: Place them in series with the signal traces, close to the flash chip.

### Layout Guidelines

| Parameter                  | Requirement                                                  |
| :------------------------- | :----------------------------------------------------------- |
| **Single-ended Impedance** | 50Ω                                                          |
| **Length Matching**        | The length mismatch between CLK and DATA (IO0~3) signals must be **< 12.7 mm (500 mil)**. |
