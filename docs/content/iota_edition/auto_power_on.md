# Auto Power-On
The Auto Power-On feature allows the LattePanda to start up automatically without pressing the physical power button. 

The LattePanda Iota's auto-power-on configuration differs from previous LattePanda boards: it is set directly via DIP switches and requires no BIOS adjustments, making it simple and convenient.

Naturally, the auto power-on function also can be achieved through the onboard MCU, offering enhanced flexibility.

##  Configure Auto Power-On via DIP Switch

- Locate the DIP switch. It is positioned to the left of the RTC battery connector.

- The actuator controlling auto power-on is in the upper half of the DIP switch, as highlighted by the red frame in the figure. The "APO" label in the upper-right corner of the DIP switch indicates auto power-on.

    ![](../../assets/images/LattePanda Iota/autopoweron_dipsw.webp){ width="400" }

- Set the actuator:

    | Position | Behavior                                                                                     |
|----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| **OFF** (Left Side) | **Disable** the auto power-on function |
| **ON** (Right Side) | **Enable** the auto power-on function |

!!! note

    - Only this actuator of the DIP switch needs to be set; no modifications are required in the BIOS settings!<br>
    - These settings take effect immediately, and is unaffected by the RTC battery.

## Configure Auto Power-On via Onboard MCU

GPIO18-21 of the onboard RP2040 MCU are internally connected to pins such as the power button (SW) , run indicator (S0). You can directly program the MCU to perform automatic operations under specific conditions, such as auto power-on.

- RP2040 GPIO to Board Control/Indicator Pin Mapping

| RP2040 Pin | Board Connection                     |
| :--------- | :----------------------------------- |
| GPIO18     | Internally Connected to S0 State Pin |
| GPIO19     | Internally Connected to S3 State Pin |
| GPIO20     | Internally Connected to SW Button    |
| GPIO21     | Internally Connected to RST Button   |

- Indicator Pin Function

|              | Run  | Sleep | Hibernate | Shut Down |
| ------------ | ---- | ----- | --------- | --------- |
| S0 State Pin | High | Low   | Low       | Low       |
| S3 State Pin | Low  | High  | Low       | Low       |

The following will demonstrate how to use the MCU to achieve auto power-on when external power is supplied.

- Referring to the [MCU Power Control](bios_mcu_power_control.md) section, move the actuator on the lower half (marked with "MCU") of the DIP switch to the right side(ON position). 
> This ensures that the MCU will get power when the LattePanda board is powered, regardless of whether the operating system is booted.

    ![](../../assets/images/LattePanda Iota/mcu_dipsw.webp){ width="300" }

- Upload the auto power-on code to the MCU. The Arduino sample code is provided below:

```cpp
/*
 * LattePanda Iota Auto Power-On via onboard RP2040 MCU
 */
#define PIN_S0 18 // System Status Pin
#define PIN_S3 19 // System Status Pin
#define PIN_SW 20 // Power Button Pin
void setup() 
{
  pinMode(PIN_S0, INPUT); 
  pinMode(PIN_S3, INPUT);
  pinMode(PIN_SW, INPUT); // Initialize SW as INPUT (High Impedance/Floating) to ensure button is released
  delay(1000);  //Wait until power supply is stable
  while( (digitalRead(PIN_S0) == LOW) && (digitalRead(PIN_S3) == LOW) )  // If S0 and S3 are LOW, the system is OFF
  {
    // --- PRESS BUTTON ---
    // Prepare the pin level first, then switch mode to OUTPUT to drive it LOW
    pinMode(PIN_SW, OUTPUT);
    digitalWrite(PIN_SW, LOW); 
    delay(500); // Hold for 500ms
    digitalWrite(PIN_SW, HIGH);
    // --- RELEASE BUTTON ---
    // Switch back to INPUT mode (High Impedance) to simulate release
    pinMode(PIN_SW, INPUT); 
    delay(1000); // Wait 1s before checking S0 and S3 again
  }
}
void loop() 
{
}
```

- After shutting down the LattePanda, disconnect its power supply. Then plug it back in. The LattePanda will automatically power on.

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }