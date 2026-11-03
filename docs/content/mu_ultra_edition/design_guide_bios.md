# Dual BIOS

LattePanda Mu Ultra supports dual BIOS boot modes, allowing the selection of the boot source (module integrated flash or external carrier board flash) via the `BIOS_SEL#` pin logic level — the same mechanism as the LattePanda Mu.

When the `BIOS_SEL#` pin is pulled low, LattePanda Mu Ultra Compute Module bypasses its internal flash chip and boots from the SPI flash chip on the carrier board.

This feature allows you to flash custom BIOS firmware directly to the carrier board's flash chip without needing to modify the BIOS on the computing module itself.

If the carrier board's BIOS flash is corrupted or contains incompatible firmware, you can still boot from the compute module's integrated flash. To do so, keep `BIOS_SEL#` HIGH or open the jumper that pulls it low.

!!! danger "1.8V SPI Bus — Different from LattePanda Mu"

    The BIOS SPI bus on the LattePanda Mu Ultra operates at **1.8V** (3.3V on the LattePanda Mu). A carrier-board flash chip designed for the Mu's 3.3V bus **must not be reused** — see the Component Selection section below.

## Design Guidelines

### Pin Definition

| Pin Name      | Pin Number | IO Level | Note                                                 |
| :------------ | :--------- | -------- | :--------------------------------------------------- |
| BIOS_SEL#     | 133        | 3.3V     | BIOS Flash Selection Control (Internal 100K Pull-up) |
| FLASH_SPI_CS# | 165        | 1.8V     | SPI Flash Chip Select (Active Low)                   |
| SPI_CLK       | 155        | 1.8V     | SPI Serial Clock Output                              |
| SPI_MOSI(IO0) | 159        | 1.8V     | SPI Master Out Slave In (Data IO 0)                  |
| SPI_MISO(IO1) | 163        | 1.8V     | SPI Master In Slave Out (Data IO 1)                  |
| SPI_IO2       | 161        | 1.8V     | Data IO 2 (Quad Mode)                                |
| SPI_IO3       | 153        | 1.8V     | Data IO 3 (Quad Mode)                                |

### Boot Selection Configuration

| BIOS_SEL# Level | Boot Source         | Description                                      |
| :-------------- | :------------------ | :----------------------------------------------- |
| HIGH            | Integrated Flash    | Uses the module's integrated flash chip          |
| LOW             | Carrier Board Flash | Uses the flash chip located on the carrier board |

The `BIOS_SEL#` pin features an integrated 100K pull-up resistor. If the carrier board BIOS is not required, this pin can be left floating (NC), and the BIOS will default to booting from the compute module's integrated flash.

The `BIOS_SEL#` pin accepts 3.3V logic. If your existing carrier board pulls this pin up to 3.3V, you can keep the original design unchanged.

!!! warning "Do Not Toggle BIOS_SEL# Pin Immediately after Applying Power"

    - The transmission of ME data from the BIOS Flash to the CPU begins shortly after power-up (approx. 50ms) and lasts for approximately 150ms.
    - Toggling the pin state during this critical window will corrupt the data transfer and cause boot failure.

### Component Selection

| Parameter               | Requirement    |
| :---------------------- | :------------- |
| Voltage                 | 1.8V           |
| Capacity                | 32 MB (256 Mb) |
| Recommended Part Number | W25R256JWEIQ   |

!!! warning "An Unpowered 3.3V Flash Chip Still Blocks Booting"

    Our testing shows that even when a 3.3V flash chip on the carrier board is **not powered**, its presence on the SPI bus still prevents the Mu Ultra from booting. Simply depowering the chip is not enough — it must be physically removed or replaced with a 1.8V part.
    
    Note that `FLASH_SPI_CS#` (pin 165 of the Mu Ultra or pin 1 of the flash chip) typically has a pull-up resistor connected to the flash chip's power rail on the carrier board. If you remove the flash chip, **remove this pull-up resistor as well**.

### Power Sequencing

- `1.8V standby power supply` is required for powering the flash chip.

    > The standby power remains continuously active as long as external power is applied to the carrier board, regardless of the compute module's operational state (running or shut down).

- Do NOT power the flash chip after the Compute Module has booted.

     > The compute module attempts to read the flash chip shortly after power-up. If the flash chip is unpowered at that moment, the read fails, and the system will not boot.

### Boot Selection Circuit

Leveraging the internal pull-up resistor on `BIOS_SEL#`, the carrier board design can be simplified:

- **No External BIOS**: Leave `BIOS_SEL#` Floating (NC).
- **With External BIOS**: Use a 2-Pin jumper/switch.
    - Pin 1: Connect to `BIOS_SEL#`
    - Pin 2: Connect to `GND`
    - Short (Jumper/Switch ON) → `BIOS_SEL#` LOW Level → Boot from Carrier Board's Flash
    - Open (Jumper/Switch OFF) → `BIOS_SEL#` HIGH Level → Boot from Compute Module's Flash

💡 The external pull-up resistor for `BIOS_SEL#` on the carrier board can be omitted.

### Series Resistors

Intel's reference design recommends series resistors on SPI signal lines (CLK, IO0~IO3).

- Value: 15Ω
- Placement: Place them in series with the signal traces, close to the flash chip.

### Layout Guidelines

| Parameter              | Requirement                                        |
| :--------------------- | :------------------------------------------------- |
| Single-ended Impedance | 50Ω                                                |
| Length Matching        | Recommended CLK to DATA Mismatch < 1.25 mm (50mil) |

## Carrier BIOS Flash Boot Restriction

After replacing the compute module, the BIOS firmware in the carrier board's flash chip must be fully re-flashed.
>- The BIOS flash chip contains an ME region. When a compute module is powered on for the first time, it checks whether the ME region already contains CPU information. If this is the initial boot, the CPU information field will be empty, then writes the current CPU's details into this region and proceeds with a normal boot. On subsequent power-ons, it compares the stored information in the flash with the current CPU. If the verification fails (e.g. after replacing the compute module), it will prevent the compute module from powering up.
>- When the BIOS flash chip is located on the carrier board, replacing the compute module while the flash still contains the original CPU information causes verification to fail, and the compute module will be unable to boot.
>- This is dictated by CPU hardware and cannot be modified.
