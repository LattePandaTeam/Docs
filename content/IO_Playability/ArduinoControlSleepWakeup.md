## Principle Overview

The Arduino Leonardo, integrated into the Lattepanda board, employs the ATmega32u4 microcontroller and enables direct USB communication without requiring an additional processor. It possesses the ability to simulate Human Interface Devices (HID), allowing the transmission of keystrokes, mouse movements, and click events to a connected computer, thereby effectively managing functionalities of the Windows operating system such as sleep mode and wake function.

In this chapter, we use the HID library, developed by NicoHood, as an example to demonstrate how the Arduino Leonardo can be used to put the Windows system to sleep or wake it up.


## Requirements

### Software

   [HID Library](https://github.com/NicoHood/HID/releases)<br>
	
   [Arduino IDE 1.8.x](https://www.arduino.cc/en/software)<br>

### Hardware<br>

   LattePanda Board with Windows 10 System<br>


## Tutorial

- Download and install the Arduino IDE. However, if you are using the LattePanda official image, the Arduino IDE is already incorporated into the Windows system, and this step can be bypassed.

- Download the HID library file.  Once downloaded, extract its contents. Rename the extracted folder to 'HID-Project'. Then copy this folder to the 'library' folder located in the Arduino IDE installation directory. The result should looks like the following:

<center>![](/assets/images/IO Playability/InstallHIDLib.jpg)</center>

- Launch the Arduino IDE. Navigate through the following selections: Tools -> Board -> Arduino Leonardo (or LattePanda Leonardo). Afterwards, choose the COM port that corresponds to this board.

<center>![](/assets/images/IO Playability/LattePandaLeonardo.jpg)</center>

- Click on the 'Upload' button to upload the sample code provided below.<br>

```C
/*
  System example
  Use two buttons to put Windows OS into sleep or wake it up again..

  See HID Project documentation for more Consumer keys.
  https://github.com/NicoHood/HID/wiki/System-API
*/

#include "HID-Project.h"

const int pinButtonS = A0;
const int pinButtonW = A1;

void setup() 
{
  pinMode(LED_BUILTIN, OUTPUT); // prepare led + buttons
  pinMode(pinButtonS, INPUT_PULLUP);
  pinMode(pinButtonW, INPUT_PULLUP);
  System.begin(); // Sends a clean report to the host. This is important on any Arduino type.
}

void loop() 
{
  if (!digitalRead(pinButtonS)) 
  {
    digitalWrite(LED_BUILTIN, HIGH);
    System.write(SYSTEM_SLEEP); // Puts Windows OS into sleep mode
    delay(300);  // Simple debounce
    digitalWrite(LED_BUILTIN, LOW);
  }
  if (!digitalRead(pinButtonW)) 
  {
    digitalWrite(LED_BUILTIN, HIGH);
    System.write(SYSTEM_WAKE_UP);  // Wake up the Windows OS (USB wakeup is defaultly enabled in the BIOS)
    delay(300); // Simple debounce
    digitalWrite(LED_BUILTIN, LOW);
  }
}
```

- Once done, you'll be able to use two buttons that are connected to the A0 and A1 pins of the Arduino Leonardo to  put the Windows system to sleep or wake it up..<br>

   Press the button connected A0 pin: put the Windows system to sleep<br>

   Press the button connected A1 pin: wake the Windows system up<br>

  Enjoy it!<br>
  
- Please see the [System-API](https://github.com/NicoHood/HID/wiki/System-API) to explore more functions.