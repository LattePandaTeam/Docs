# Dual BIOS

LattePanda Mu supports dual BIOS boot modes, allowing the selection of the boot source (module integrated flash or external carrier board flash) via the **BIOS_SEL** pin logic level.

When the **BIOS_SEL** pin is pulled low, LattePanda Mu Compute Module bypasses its internal flash chip and boots from the SPI flash chip on the carrier board.

This feature allows you to flash custom BIOS firmware directly to the carrier board's flash chip without needing to modify the BIOS on the computing module itself.

## Design Guidelines

## Pin Definition

| Pin Name     | Pin Number | Note                                                   |
| :----------- | :--------- | :----------------------------------------------------- |
| BIOS_SEL | 133        | BIOS Flash Selection Control (Internal 100K Pull-up) |
| SPI_CS# | 165 | SPI Flash Chip Select (Active Low) |
| SPI_CLK | 155 | SPI Serial Clock Output |
| SPI_MOSI(IO0) | 159 | SPI Master Out Slave In (Data IO 0) |
| SPI_MISO(IO1) | 163 | SPI Master In Slave Out (Data IO 1) |
| SPI_IO2 | 161 | Data IO 2 (Quad Mode) |
| SPI_IO3 | 153 | Data IO 3 (Quad Mode) |


### Boot Selection Configuration

| BIOS_SEL Level | Boot Source              | Description                                      |
| :------------- | :----------------------- | :----------------------------------------------- |
| HIGH           | Module's Integrate Flash | Uses the module's integrate flash chip           |
| LOW            | Carrier Board Flash      | Uses the flash chip located on the carrier board |

The **BIOS_SEL** pin features an integrated **100K pull-up resistor**. If the carrier board BIOS is not required, this pin can be left floating (NC), and the BIOS will default to booting from the compute module‘s integrate flash.

!!! warning "Do Not Hot-Switch"
    Once power (VIN) is applied to the Compute Module, and the system has not yet been booted, the BIOS_SEL pin level MUST remain fixed.

    - Reason: Upon receiving power, the transmission of ME data from the BIOS Flash to the CPU may begin immediately.
    - Consequence: Changing the pin state during this powered standby phase will interrupt the data transfer.

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
- The compute module attempts to read the BIOS flash when powered. If the flash chip is unpowered at that moment, the read fails, and the system may not boot.

### Boot Selection Circuit

Leveraging the internal pull-up resistor on `BIOS_SEL`, the carrier board design can be simplified:

- **No External BIOS**: Leave `BIOS_SEL` Floating (NC).
- **With External BIOS**: Use a 2-Pin jumper/switch.
    - Pin 1: Connect to `BIOS_SEL`
    - Pin 2: Connect to `GND`
    - Short (Jumper/Switch ON) → `BIOS_SEL` LOW Level → Boot from Carrier Board's Flash
    - Open (Jumper/Switch OFF) → `BIOS_SEL` HIGH Level → Boot from Compute Module's Flash

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
