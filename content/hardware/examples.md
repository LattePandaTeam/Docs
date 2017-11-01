### Examples

#### digitalWrite

In this example, we will blink the LED which is connected with digital pin (D0 - D13)

**API Required :**

1. public Arduino();
2. public void pinMode(int pin, byte mode);
3. public void digitalWrite(int pin, byte value);

**Hardware Required:**

1. LattePanda x 1
2. led x 1 （or you can use the LED attached to pin 13 on the Arduino board itself）

**Circuit:**

1. LED inserted directly into pin 13

   ![_example_blink](http://www.lattepanda.com/wp-content/uploads/2016/02/example_blink.png)

**Code:**

1. Create a new project in Visual Studio, Refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)
2. Main function code :

`using System;`
`using System.Collections.Generic;`
`using System.Linq;`
`using System.Text;`
`using System.Threading.Tasks;`
`using System.Threading;`
`using LattePanda.Firmata;`
`namespace blinkYourBoard//project name`
`{`
`class Program`
`{`
`static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
`static void Main(string[] args)`
`{`
`arduino.pinMode(13, Arduino.OUTPUT);//Set the digital pin 13 as output`
`while (true)`
`{`
`// ==== set the led on or off`
`arduino.digitalWrite(13, Arduino.HIGH);//set the LED　on`
`Thread.Sleep(1000);//delay a seconds`
`arduino.digitalWrite(13, Arduino.LOW);//set the LED　off`
`Thread.Sleep(1000);//delay a seconds`
`}`
`}`
`}`
`}`

**Test：**

1. Click Debug button to execute, the LED will start blinking.


#### digitalRead

This example detects the Button state through digital pin (D0-D13). **API required:**

1. public Arduino();
2. public void pinMode(int pin, byte mode);
3. public int digitalRead(int pin);

**Hardware Required:**

1. LattePanda x 1
2. Button x 1
3. Resistor (Resistance value greater than 1KΩ) x 1

**Circuit:**

1. Connect button to pin 12 as following figure shows

![_example_button](http://www.lattepanda.com/wp-content/uploads/2016/02/example_button.png)

**Code:**

1. Create a new project in Visual Studio, refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)

2. Main function code

   `using System;`
   `using System.Collections.Generic;`
   `using System.Linq;`
   `using System.Text;`
   `using System.Threading.Tasks;`
   `using System.Threading;`
   `using LattePanda.Firmata;`
   `namespace buttonDemo//your project name`
   `{`
   `class Program`
   `{`
   `static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
   `static void Main(string[] args)`
   `{`
   `arduino.pinMode(12, Arduino.INPUT);// Set the digital pin 12 as input`
   `int Value = arduino.digitalRead(12);// Read the state of pin 12 once.`
   `Console.WriteLine(Value);`
   `arduino.digitalPinUpdated += Arduino_digitalPinUpdated;//`
   `Add Event Listeners and call it when the digital input update.`
   `}`
   `private static void Arduino_digitalPinUpdated(byte pin, byte state)`
   `{`
   `Console.WriteLine(pin);`
   `Console.WriteLine(state);`
   `}`
   `}`
   `}`

- Welcome **
  - ​
  - ​

# CONTENTS

- Getting Started with LattePanda
  - [Power on your LattePanda](http://www.lattepanda.com/docs/#Power_on_your_LattePanda)
  - [Connect with your peripheral device](http://www.lattepanda.com/docs/#Connect_with_your_peripheral_device)
  - [Connect to Wi-Fi](http://www.lattepanda.com/docs/#Connect_to_Wi-Fi)
  - [Connect with 7“ Display and Touch Panel Overlay](http://www.lattepanda.com/docs/#Connect_With_7“_Display_And_Touch_Panel_Overlay)
- Software & Operating Systems
  - [How to setup a VNC server on the LattePanda using TightVNC](http://www.lattepanda.com/docs/#VNC)
- Hardware & Accessories
  - [Inputs and Outputs](http://www.lattepanda.com/docs/#Inputs_and_Outputs)
  - [How to access pinouts from Visual Studio](http://www.lattepanda.com/docs/#How_to_access_pinouts_from_Visual_Studio)
  - [FirmateWebClient: a simple way to access sensors and actuators](http://www.lattepanda.com/docs/#FirmateWebClient)
- Project Examples
  - [Node-RED](http://www.lattepanda.com/docs/#Node-RED)
  - [Turn a LattePanda in to a 3D Print Server Using Octoprint](http://www.lattepanda.com/docs/#Turn_a_LattePanda_in_to_a_3D_Print_Server_Using_Octoprint)
  - [Face Detection using OpenCV](http://www.lattepanda.com/docs/#Face_Detection_Using_OpenCV)
  - [Send light sensor data to Azure storage](http://www.lattepanda.com/docs/#Send_light_sensor_data_to_Azure_storage)
  - [Run a simple Azure IoT Hub sample on LattePanda](http://www.lattepanda.com/docs/#Run_a_simple_Azure_IoT_Hub_sample_on_LattePanda)
- Troubleshooting & FAQs
  - [How do I know LattePanda is on?](http://www.lattepanda.com/docs/#How_do_I_know_LattePanda_is_on)
  - [How do I re-install LattePanda Windows system?](http://www.lattepanda.com/docs/#How_to_re-install_LattePanda_Windows_system)
  - [How to install Windows Enterprise on LattePanda?](http://www.lattepanda.com/docs/#How_to_install_Windows_Enterprise_on_LattePanda?)
  - [What Boot Method Does LattePanda Use?](http://www.lattepanda.com/docs/#What_Boot_Method_Does_LattePanda_Use?)
  - [Common Adapters and USB cable recommendations](http://www.lattepanda.com/docs/#Common_adapter_and_usb_cable_recommend)

# GETTING STARTED

## Power on your LattePanda

Note: Check your power adapter and USB cable connection before use - insufficient or unstable current may prevent your LattePanda from initializing. 

Here’s our list of recommended power adapters and cables

 

MicroUSB

 

at least 2A of current

 

 

 

If you are using the 7" display/touch panel, please connect it before powering on your device

 

Note: Do not unplug the power cable while the system is running. (If the red LED is on, this indicates that the is system is running) 

1. When the LED turns off, press and hold the power button for one second to turn the LattePanda on. You should see the LED lights up again 
   **CN2 Header Pins**
   If you use the CN2 header pins, you will need to create an adapter. Using a barrel jack connector and dupont cables is a very effective solution, [see this post on our forum for more information.](http://www.lattepanda.com/forum/viewtopic.php?f=10&t=797) 

## Connect with your peripheral device

## Connect to Wi-Fi

 

Note

## Connect with 7“ Display and Touch Panel Overlay

*Note:Please connect it with LattePanda BEFORE power-on. And make sure the Golden Finger face the right side. *
The contacts on FPC are so compact and in order. Please be careful that any dislocation connection may cause the LattePanda short circuit and the IPS display abnormal like ghosting or flicker.

1. Lift up the actuator. Use thumb or index finger might be easier.


1. Insert display FPC in.
   **Place Golden Finger side down!**
   ![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0102.jpg)

**Note: The FPC must be fully inserted in the connector. If not fully inserted, the actuator will not close properly. Should this be the case, lift up the actuator and repeat the process (starting with Step 1 above)**

1. Rotate down the actuator until firmly closed.


1. Insert the FPC of touch panel in
   Same as the display. Place the Golden Finger side down too.

# Software & Operating Systems

## Setting up a VNC server on the LattePanda using TightVNC

### Introduction

 

Let’s get started:

### Step 1 - Installation

1. Download and install TightVNC for Windows on your LattePanda. Choose 32-bit or 64-bit depending on your system architecture.

   ​

   (LattePanda Standard is 32-bit, LattePanda Enhanced is 64-bit)

   ​

   Download

   ​

   ​

   ​

2. End-User Licence Agreement

   ​

   Accept the licence agreement and click next

   ​

   ​

   ​

3. Choose Setup Type
   Typical installation will install both TightVNC server and TightVNC viewer on your LattePanda
   Custom installation allows you to select which elements to install. Really all we need is the server, unless you would like to be able to view other PCs on your network through the LattePanda, in which case you will need the viewer as well.
   For this tutorial we will just do the typical install.
   ![vnc_image003](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image003.png)

4. Select Additional Tasks
   Check all the boxes
   ![vnc_image004](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image004.png)

5. Ready to Install TightVNC
   Click Install to begin!
   ![vnc_image005](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image005.png)

6. TightVNC Server: Set Passwords
   Password-based A
   ![vnc_image005](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image006.png)
   At this point it is wise to set a password for remote access. Point the radio button towards “Require password-based authentication” and choose a password. Retype it in the following box.
   I have set the password as “lattepan” (as the password can’t be longer than 8 characters)

7. Administrative Password
   This is not strictly necessary. In this tutorial I will not set an administrative password, but you may if you wish. If you set a password for this you will have to enter it before changing any configuration settings.
   When you are happy with your settings, click “OK”. Click “Finish” to exit the setup wizard.

### Step 2 - Configuration

You should now see a new icon in your system tray. (If you don’t, try logging out and logging back in to your PC).
![vnc_image007](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image007.png)
Here you can see the IP address your PC is on.
Double click it to bring up the service configuration window. The default settings should be fine for our purposes.
![vnc_image008](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image008.png)
Next, you will need to go on to the computer you would like to control the LattePanda with and using the same installation package, install TightVNC viewer. When you have successfully installed TightVNC viewer, check that you are on the same network as your LattePanda, otherwise it will not work!
When you are certain that your computer and the LattePanda are on the same local network, proceed to step 3

### Step 3 - Testing

 

” You could also go in to your router control interface and look for attached devices. The next step is to input this IP address in the New TightVNC Connection Window, followed by the port number you set in the service settings. The default is port 5900.
`<ip address of LattePanda>:<port number>`
`e.g. 192.168.2.60:5900` Click connect. If all goes well you will be prompted with a password input. Input the password you set earlier. My password was “lattepan”. Press enter.
![vnc_image011](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image011.png)
You will be greeted by a window containing your LattePanda’s GUI! You may now control it remotely!
![vnc_image012](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image012.png)
This concludes the LattePanda VNC tutorial. If you have any questions or comments please let us know in the forum. I hope this has been of help to you.Hardware & AccessoriesInputs and OutputsIn this article we will discuss the images of the Lattepanda. Below is a basic diagram that displays all the pins:![image1](http://www.lattepanda.com/wp-content/uploads/2017/08/PINOUT.png)Pinouts in area U1 are assigned to the X-Z8300 core.
Pinouts in area U2 are assigned to the ATmega32u4 core. Each of the 20 digital pins (A0 - A5, D0 - D13) in area U2 can be used as an input or output, each operating at 5 volts. Each pin can output or receive 40 mA and each has an internal pull-up resistor (disconnected by default) of 20-50k ohm.
**Caution:** Exceeding 40mA on any I/O pin may cause permanent damage to the ATmega32u4. **Some pins have specialized functions:**
**Analog Inputs:** A0 - A5, A6 - A11 (on D4, D6, D8, D9, D10, and D12). The LattePanda has 12 analog inputs, labeled A0 through A11, all of which can also be used as digital I/O. Each pin has a 10 bit resolution (i.e. 1024 different values). By default they measure from ground to 5 volts.
**Serial:** D0 (RX) and D1 (TX). Used to receive (RX) and transmit (TX) TTL serial data.
**External Interrupts:** D3 (interrupt 0), D2 (interrupt 1), D0 (interrupt 2), D1 (interrupt 3) and D7 (interrupt 4). These pins can be configured to trigger an interrupt on a low value, a rising or falling edge, or a change in value.
**PWM:** D3, D5, D6, D9, D10, and D13 provide 8-bit PWM output.
**SPI:** D16 (MOSI), D14 (MISO), D15 (SCK).
**LED:** D13 There is a built-in LED driven by digital pin 13. When the pin's val
**TWI:** D2(SDA), D3(SCL). **Other pins on the board:**
**Reset:**
Bring this line LOW to reset the microcontroller. Typically used to add a reset button to shields which block the one on the board.How to access pinouts from Visual StudioLattePanda.Firmata[LattePanda.Firmata](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata) is an open-source Firmata library provided by LattePanda, which is suitable for Windows apps developed in Visual Studio. This class allows you to control Arduino GPIO from Windows apps, with features including:
● Reading and writing to digital pins
● Reading analog inputs
● Controlling servo motors
● Sending data to devices and receiving data form devices through the I2C Bus3 Steps to Your Remote Arduino Project[Set up your PC](http://www.lattepanda.com/docs/#SetupyourPC)[Set up the Arduino](http://www.lattepanda.com/docs/#SetuptheArduino)(It is pre-installed, unless you changed the Arduino program)[Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard) or use the [sample project](http://www.lattepanda.com/wp-content/uploads/2016/02/blinkYourBoard.zip)FunctionalityConstructor`public Arduino();``public Arduino(string serialPortName, Int32 baudRate, bool autoStart, int delay);``public Arduino(string serialPortName);``public Arduino(string serialPortName, Int32 baudRate);`
There are four different constructors, you can choose the proper one depending on your needs
**Parameters**
`serialPortName:`Specify serial port name which you can find in the Device Manager
`baudRate:` It specifies the serial port speed, the value must be the same as Arduino Firmata. The default value is 57600.
`autoStart:` Connect the Arduino automatically when it is true. Default value: True
`delay:` Set the maximum interval in seconds of serial connection timeout. Default time: 8 SecondsConfigurationpublic void pinMode (int pin, byte mode);
Sets the mode of the specified pin as you wish
**Parameters**
`pin:` the number of the pin whose mode you wish to set
`mode:` `Arduino.OUTPUT`, `Arduino.INPUT`, `Arduino.PWM`, `Arduino.SERVO`
**Returns**
NoneDigitalpublic void digitalWrite (int pin, byte value);
Write to a digital pin that has been toggled to output mode with pinMode() method
**Parameters**
`pin:` The digital pin to write to
`value:` `Arduino.HIGH`, `Arduino.LOW`
**Returns**
Nonepublic int digitalRead(int pin);
Returns the last known state of the digital pin
**Parameters**
`pin:` The Arduino digital input pin
**Returns**
`Arduino.HIGH` or `Arduino.LOW`public event DigitalPinUpdated digitalPinUpdated;
Call this Callback function when the digital value of the pin whose mode has been set as `Arduino.INPUT` update
**Delegate **
`public delegate void DigitalPinUpdated(byte pin, byte state);`
**Parameters**
`pin:` the pin whose value will update
`state:` `Arduino.HIGH`, `Arduino.LOW`
**Returns**
NoneAnalog`public void analogWrite(int pin, int value);`
Write to an analog pin using Pulse-width modulation (PWM)
**Parameters**
`pin:` Analog output pin
`value:` PWM frequency from 0 (always off) to 255 (always on)
**Returns**
Nonepublic int analogRead(int pin);
Returns the last known value of the analog pin
**Parameters**
`pin:` The Arduino analog input pin(0~5)
**Returns**
`int:`A value representing the analog value between 0 (0V) and 1023 (5V)`public event AnalogPinUpdated analogPinUpdated;`
Call this function when the analog value of pin whose mode has been set as `Arduino.INPUT` update
**Delegate**`public delegate void AnalogPinUpdated(int pin, int value);`
**Parameters**
`pin:` the pin whose value update
`value:` A value representing the analog value between 0 (0V) and 1023 (5V)
**Returns**
NoneServo`public void servoWrite(int pin, int angle);` Write the angle to specified pin which has been set the mode as Servo
**Parameters**
`pin:` Servo output pin.
`value:` Angle from 0 to 180.
**Returns**
NoneI2C/TwoWire`public void wireBegin(Int16 delay);`
Initiate the Wire library and join the I2C bus as a master. This should normally be called only once
**Parameters**
`delay:` the number of milliseconds to pause (ms).
**Returns**
None`public void wireRequest(byte slaveAddress,Int16 slaveRegister, Int16[] data,byte mode);`
Request I2C devices to send or receive data, then call `didI2CDataReveive` event to handle data when receive data.
**Parameters** `slaveAddress:` the 7-bit address of the device to request bytes from
`slaveRegister:` Specify the register that you want to store data or read data, choose `Arduino.NONE`if there is empty.
`data`:when set the Parameter `mode` as `Arduino.I2C_MODE_WRITE` ,the data such as `{0x00,0x01}` will be sending to devices through I2C BUS.when set the Parameter `mode` as`Arduino.I2C_MODE_READ_ONCE` or `Arduino.I2C_MODE_READ_CONTINUOUSLY` , data specify the length of received data.`mode`:`Arduino.I2C_MODE_WRITE` :Send data`Arduino.I2C_MODE_READ_ONCE` : Receive data once`Arduino.I2C_MODE_READ_CONTINUOUSLY` :Receive data continuous`Arduino.I2C_MODE_STOP_READING` :Stop receiving data**Returns**
None`public event DidI2CDataReveive didI2CDataReveive;`
Call this event when receive I2C data.
**Delegate **
`public delegate void DidI2CDataReveive(byte address ,byte register, byte[] data);`
**Parameters**
`address:` : Specify slave computer address
`register:`: Specify register address
`data:` : Data returned
**Returns**
NoneExamplesdigitalWriteIn this example, we will blink the LED which is connected with digital pin (D0 - D13)
**API Required :**public Arduino();public void pinMode(int pin, byte mode);public void digitalWrite(int pin, byte value);**Hardware Required:**LattePanda x 1led x 1 （or you can use the LED attached to pin 13 on the Arduino board itself）**Circuit:**LED inserted directly into pin 13
![_example_blink](http://www.lattepanda.com/wp-content/uploads/2016/02/example_blink.png)**Code:**Create a new project in Visual Studio, Refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)Main function code :
`using System;`
`using System.Collections.Generic;`
`using System.Linq;`
`using System.Text;`
`using System.Threading.Tasks;`
`using System.Threading;`
`using LattePanda.Firmata;`
`namespace blinkYourBoard//project name`
`{`
`class Program`
`{`
`static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
`static void Main(string[] args)`
`{`
`arduino.pinMode(13, Arduino.OUTPUT);//Set the digital pin 13 as output`
`while (true)`
`{`
`// ==== set the led on or off`
`arduino.digitalWrite(13, Arduino.HIGH);//set the LED　on`
`Thread.Sleep(1000);//delay a seconds`
`arduino.digitalWrite(13, Arduino.LOW);//set the LED　off`
`Thread.Sleep(1000);//delay a seconds`
`}`
`}`
`}`
`}`**Test：**Click Debug button to execute, the LED will start blinking.digitalReadThis example detects the Button state through digital pin (D0-D13). **API required:**public Arduino();public void pinMode(int pin, byte mode);public int digitalRead(int pin);**Hardware Required:**LattePanda x 1Button x 1Resistor (Resistance value greater than 1KΩ) x 1**Circuit:**Connect button to pin 12 as following figure shows
![_example_button](http://www.lattepanda.com/wp-content/uploads/2016/02/example_button.png)**Code:**Create a new project in Visual Studio, refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)Main function code
`using System;`
`using System.Collections.Generic;`
`using System.Linq;`
`using System.Text;`
`using System.Threading.Tasks;`
`using System.Threading;`
`using LattePanda.Firmata;`
`namespace buttonDemo//your project name`
`{`
`class Program`
`{`
`static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
`static void Main(string[] args)`
`{`
`arduino.pinMode(12, Arduino.INPUT);// Set the digital pin 12 as input`
`int Value = arduino.digitalRead(12);// Read the state of pin 12 once.`
`Console.WriteLine(Value);`
`arduino.digitalPinUpdated += Arduino_digitalPinUpdated;//`
`Add Event Listeners and call it when the digital input update.`
`}`
`private static void Arduino_digitalPinUpdated(byte pin, byte state)`
`{`
`Console.WriteLine(pin);`
`Console.WriteLine(state);`
`}`
`}`
`}`

**Test:**

1. Click Debug to execute, then the screen will print the value when you push down or release the button

#### PWM

This example assigns a pulse width modulation (PWM) value to an output pin (D3, D5, D6, D9, D10, D11) to dim or brighten an LED **API Required:**

1. public Arduino();
2. public void pinMode(int pin, byte mode);
3. public void analogWrite(int pin, int state);

**Hardware Required:**

1. LattePanda x 1
2. LED x 1

**Circuit:**

1. LED connected directly into pin 11 as following figure shows
   ![_example_PWM](http://www.lattepanda.com/wp-content/uploads/2016/02/example_PWM.png)

**Code:**

1. Create a new project in Visual Studio, refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)

2. Main function code

   `using System;`
   `using System.Collections.Generic;`
   `using System.Linq;`
   `using System.Text;`
   `using System.Threading.Tasks;`
   `using System.Threading;`
   `using LattePanda.Firmata;`
   `namespace analogWriteExample`
   `{`
   `class Program`
   `{`
   `static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
   `static void Main(string[] args)`
   `{`
   `arduino.pinMode(11, Arduino.PWM);`
   `while (true)`
   `{`
   `for (int i = 0; i <= 255; i++)`
   `{`
   `arduino.analogWrite(11, i);`
   `Thread.Sleep(4);//delay 4ms`
   `}`
   `for (int i = 255; i >= 0; i--)`
   `{`
   `arduino.analogWrite(11, i);`
   `Thread.Sleep(4);//delay 4ms`
   `}`
   `}`
   `}`
   `}`
   `}`

**Test:**

1. Click Debug to execute, you will find the LED brightness vary form dim to bright and then back again.

#### analogRead

This example detect the value of analog pin (A0-A5) where a potentiometer is connected, and then print the value **API Required:**

1. public Arduino();
2. public int analogRead(int pin);
3. public event AnalogPinUpdated analogPinUpdated;

**Hardware Required:**

1. LattePanda x 1
2. Potentiometer x 1

**Circuit:**

1. Connect the potentiometer to pin 3 as following figure shows：

![_example_analogRead](http://www.lattepanda.com/wp-content/uploads/2016/02/example_analogRead.png)

**Code :**

1. Create a new project in Visual Studio, refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)

2. Main function Code：

   `using System;`
   `using System.Collections.Generic;`
   `using System.Linq;`
   `using System.Text;`
   `using System.Threading.Tasks;`
   `using System.Threading;`
   `using LattePanda.Firmata;`
   `namespace analogWriteExample`
   `{`
   `class Program`
   `{`
   `static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
   `static void Main(string[] args)`
   `{`
   `int Value = arduino.analogRead(3);//Read the state of pin 3`
   `Console.WriteLine(Value);`
   `arduino.analogPinUpdated += Arduino_analogPinUpdated; ;//Add Event Listeners and call it when the analog input update.`
   `}`
   `private static void Arduino_analogPinUpdated(int pin, int value)`
   `{`
   `if(pin==3)`
   `{`
   `Console.WriteLine(pin);`
   `Console.WriteLine(value);`
   `}`
   `}`
   `}`
   `}`


**Test：**

1. Click Debug to execute, the state of potentiometer will print when you rotate it.

#### Servo

In this example, we will sweep the servo motor back and forth across 180 degrees. **API Required:**

1. public Arduino();
2. public void pinMode(int pin, byte mode);
3. public void servoWrite(int pin, int angle);

**Hardware Required:**

1. LattePanda x 1
2. Servo Motor x 1

**Circuit:**

1. Servo inserted directly into pin D9：
   ![_example_Servo](http://www.lattepanda.com/wp-content/uploads/2016/02/example_Servo.png)

**Code :**

1. Create a new project in Visual Studio, Refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)

2. Main function code:

   `using System;`
   `using System.Collections.Generic;`
   `using System.Linq;`
   `using System.Text;`
   `using System.Threading.Tasks;`
   `using System.Threading;`
   `using LattePanda.Firmata;`
   `namespace analogWriteExample`
   `{`
   `class Program`
   `{`
   `static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
   `static void Main(string[] args)`
   `{`
   `arduino.pinMode(9, Arduino.SERVO);`
   `while (true)`
   `{`
   `arduino.servoWrite(9, 180);//tell the servo motor go to the position in 180 degrees`
   `Thread.Sleep(1000);//delay a seconds`
   `arduino.servoWrite(9, 0);//tell the servo motor go to the position in 0 degrees`
   `Thread.Sleep(1000);//delay a seconds`
   `}`
   `}`
   `}`
   `}`


**Test:**

1. Click debug to execute, you will find the motor sweeping forth and back continuously.

#### I2C

This example will show you how to use I2C to get the data form 3-axis accelerometer ADXL345 **API Required:**

1. public Arduino();
2. public void wireBegin(Int16 delay);
   3.public void wireRequest(byte slaveAddress,Int16 slaveRegister, Int16[] data,byte mode);
3. public event DidI2CDataReveive didI2CDataReveive;

**Hardware Required:**

1. LattePanda x 1
2. ADXL345 x 1

**Circuit:**

1. The following is a figure describing which pins on the LattePanda should be connected to the pins on the accelerometer.

   ![_example_ADXL345](http://www.lattepanda.com/wp-content/uploads/2016/02/example_ADXL345.png)

**Code :**

1. Create a new project in Visual Studio, Refer to [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard)

2. Main function code:

   `using System;`
   `using System.Collections.Generic;`
   `using System.Linq;`
   `using System.Text;`
   `using System.Threading.Tasks;`
   `using System.Threading;`
   `using LattePanda.Firmata;`
   `namespace analogWriteExample`
   `{`
   `class Program`
   `{`
   `static Arduino arduino = new Arduino();//create an instance and initialize with the default parameters`
   `static void Main(string[] args)`
   `{`
   `arduino.wireBegin(200);`
   `arduino.wireRequest(0x53, 0x2D, new Int16[] { 8 }, Arduino.I2C_MODE_WRITE);//Write data{8} to I2C`
   `arduino.didI2CDataReveive += Arduino_didI2CDataReveive;//did I2C Data Reveive`
   `arduino.wireRequest(0x53, 0x32, new Int16[] { 6 }, Arduino.I2C_MODE_READ_CONTINUOUSLY);//Read data form I2C data`
   `}`
   `private static void Arduino_didI2CDataReveive(byte address, byte register, byte[] data)`
   `{`
   `Console.WriteLine(BitConverter.ToInt16(data, 0));`
   `Console.WriteLine(BitConverter.ToInt16(data, 2));`
   `Console.WriteLine(BitConverter.ToInt16(data, 4));`
   `}`
   `}`
   `}`


**Test:**

1. Click Debug to execute, the 3-axis acceleration data will be printing continuous.