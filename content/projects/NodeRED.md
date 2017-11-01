---
comments: true
layout: post
title: Controlling Arduino with Email
tags: Arduino Node-RED IOT firmata
---

# Introduction

[Node-RED](http://nodered.org/) is a visual programming tool for Internet of Things. IBM is actively bringing its latest functions, including Waston and IOT service, into the toolbox ever since its acquisition.
Here we are taking the advantage of the Node-RED tool and the email service to build a simple but awesome IOT control unit. You can remotely control your Arduino board by sending an email to your own account. The process roughly takes half an hour, with minimum coding required.

### Hardware list

* LattePanda

# Software setup

1. [Flash Firmata into Your Uno Board](http://www.lattepanda.com/docs/#SetuptheArduino)

2. [Install Node-RED](http://nodered.org/docs/getting-started/installation).

3. Please follow the [official Arduino documentation from Node-RED](http://nodered.org/docs/hardware/arduino).
   As soon as you get past the first blinking example, you can start to go to the IOT part.

4. Build Control flow
   Here is the simple flow setup.

   ![node-red_flow](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_flow.png)

5. Configure Email Node
   Now we can configure the email node. I am using the Microsoft office email server. If you are using other
   email service providers, please check your server settings for setting up an `imap` client.

   ![node-red_email](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_email.png)

   w in the forum. I hope this has been of help to you.

   # Hardware & Accessories

   ## Inputs and Outputs

   In this article we will discuss the images of the Lattepanda. Below is a basic diagram that displays all the pins:

   Pinouts in area U1 are assigned to the X-Z8300 core.

   Pinouts in area U2 are assigned to the ATmega32u4 core. Each of the 20 digital pins (A0 - A5, D0 - D13) in area U2 can be used as an input or output, each operating at 5 volts. Each pin can output or receive 40 mA and each has an internal pull-up resistor (disconnected by default) of 20-50k ohm.

   Caution:

    Exceeding 40mA on any I/O pin may cause permanent damage to the ATmega32u4. 

   Some pins have specialized functions:

   Analog Inputs:

    A0 - A5, A6 - A11 (on D4, D6, D8, D9, D10, and D12). The LattePanda has 12 analog inputs, labeled A0 through A11, all of which can also be used as digital I/O. Each pin has a 10 bit resolution (i.e. 1024 different values). By default they measure from ground to 5 volts.

   Serial:

    D0 (RX) and D1 (TX). Used to receive (RX) and transmit (TX) TTL serial data.

   External Interrupts:

    D3 (interrupt 0), D2 (interrupt 1), D0 (interrupt 2), D1 (interrupt 3) and D7 (interrupt 4). These pins can be configured to trigger an interrupt on a low value, a rising or falling edge, or a change in value.

   PWM:

    D3, D5, D6, D9, D10, and D13 provide 8-bit PWM output.

   SPI:

    D16 (MOSI), D14 (MISO), D15 (SCK).

   LED:

    D13 There is a built-in LED driven by digital pin 13. When the pin's val

   TWI:

    D2(SDA), D3(SCL). 

   Other pins on the board:

   Reset:

   Bring this line LOW to reset the microcontroller. Typically used to add a reset button to shields which block the one on the board.

   ## How to access pinouts from Visual Studio

   ### LattePanda.Firmata

   LattePanda.Firmata

    is an open-source Firmata library provided by LattePanda, which is suitable for Windows apps developed in Visual Studio. This class allows you to control Arduino GPIO from Windows apps, with features including:

   ● Reading and writing to digital pins

   ● Reading analog inputs

   ● Controlling servo motors

   ● Sending data to devices and receiving data form devices through the I2C Bus

   ### 3 Steps to Your Remote Arduino Project

   1. [Set up your PC](http://www.lattepanda.com/docs/#SetupyourPC)
   2. [Set up the Arduino](http://www.lattepanda.com/docs/#SetuptheArduino)(It is pre-installed, unless you changed the Arduino program)
   3. [Create a project](http://www.lattepanda.com/docs/#BlinkyourBoard) or use the [sample project](http://www.lattepanda.com/wp-content/uploads/2016/02/blinkYourBoard.zip)

   ### Functionality

   #### Constructor

   - `public Arduino();`
   - `public Arduino(string serialPortName, Int32 baudRate, bool autoStart, int delay);`
   - `public Arduino(string serialPortName);`
   - `public Arduino(string serialPortName, Int32 baudRate);`
     There are four different constructors, you can choose the proper one depending on your needs
     **Parameters**
     `serialPortName:`Specify serial port name which you can find in the Device Manager
     `baudRate:` It specifies the serial port speed, the value must be the same as Arduino Firmata. The default value is 57600.
     `autoStart:` Connect the Arduino automatically when it is true. Default value: True
     `delay:` Set the maximum interval in seconds of serial connection timeout. Default time: 8 Seconds

   #### Configuration

   - public void pinMode (int pin, byte mode);
     Sets the mode of the specified pin as you wish
     **Parameters**
     `pin:` the number of the pin whose mode you wish to set
     `mode:` `Arduino.OUTPUT`, `Arduino.INPUT`, `Arduino.PWM`, `Arduino.SERVO`
     **Returns**
     None

   #### Digital

   - public void digitalWrite (int pin, byte value);
     Write to a digital pin that has been toggled to output mode with pinMode() method
     **Parameters**
     `pin:` The digital pin to write to
     `value:` `Arduino.HIGH`, `Arduino.LOW`
     **Returns**
     None
   - public int digitalRead(int pin);
     Returns the last known state of the digital pin
     **Parameters**
     `pin:` The Arduino digital input pin
     **Returns**
     `Arduino.HIGH` or `Arduino.LOW`
   - public event DigitalPinUpdated digitalPinUpdated;
     Call this Callback function when the digital value of the pin whose mode has been set as `Arduino.INPUT` update
     **Delegate **
     `public delegate void DigitalPinUpdated(byte pin, byte state);`
     **Parameters**
     `pin:` the pin whose value will update
     `state:` `Arduino.HIGH`, `Arduino.LOW`
     **Returns**
     None

   #### Analog

   - `public void analogWrite(int pin, int value);`
     Write to an analog pin using Pulse-width modulation (PWM)
     **Parameters**
     `pin:` Analog output pin
     `value:` PWM frequency from 0 (always off) to 255 (always on)
     **Returns**
     None
   - public int analogRead(int pin);
     Returns the last known value of the analog pin
     **Parameters**
     `pin:` The Arduino analog input pin(0~5)
     **Returns**
     `int:`A value representing the analog value between 0 (0V) and 1023 (5V)
   - `public event AnalogPinUpdated analogPinUpdated;`
     Call this function when the analog value of pin whose mode has been set as `Arduino.INPUT` update
     **Delegate**
   - `public delegate void AnalogPinUpdated(int pin, int value);`
     **Parameters**
     `pin:` the pin whose value update
     `value:` A value representing the analog value between 0 (0V) and 1023 (5V)
     **Returns**
     None

   #### Servo

   - `public void servoWrite(int pin, int angle);` Write the angle to specified pin which has been set the mode as Servo
     **Parameters**
     `pin:` Servo output pin.
     `value:` Angle from 0 to 180.
     **Returns**
     None

   #### I2C/TwoWire

   - `public void wireBegin(Int16 delay);`
     Initiate the Wire library and join the I2C bus as a master. This should normally be called only once
     **Parameters**
     `delay:` the number of milliseconds to pause (ms).
     **Returns**
     None

   - ```
     public void wireRequest(byte slaveAddress,Int16 slaveRegister, Int16[] data,byte mode);
     ```

     ​

     Request I2C devices to send or receive data, then call

      

     ```
     didI2CDataReveive
     ```

      

     event to handle data when receive data.

     ​

     Parameters

      

     ```
     slaveAddress:
     ```

      

     the 7-bit address of the device to request bytes from

     ​

     ```
     slaveRegister:
     ```

      

     Specify the register that you want to store data or read data, choose

      

     ```
     Arduino.NONE
     ```

     if there is empty.

     ​

     ```
     data
     ```

     :

     1. when set the Parameter `mode` as `Arduino.I2C_MODE_WRITE` ,the data such as `{0x00,0x01}` will be sending to devices through I2C BUS.
     2. when set the Parameter `mode` as`Arduino.I2C_MODE_READ_ONCE` or `Arduino.I2C_MODE_READ_CONTINUOUSLY` , data specify the length of received data.

     ```
     mode
     ```

     :

     1. `Arduino.I2C_MODE_WRITE` :Send data
     2. `Arduino.I2C_MODE_READ_ONCE` : Receive data once
     3. `Arduino.I2C_MODE_READ_CONTINUOUSLY` :Receive data continuous
     4. `Arduino.I2C_MODE_STOP_READING` :Stop receiving data

   Returns

   None

   - `public event DidI2CDataReveive didI2CDataReveive;`
     Call this event when receive I2C data.
     **Delegate **
     `public delegate void DidI2CDataReveive(byte address ,byte register, byte[] data);`
     **Parameters**
     `address:` : Specify slave computer address
     `register:`: Specify register address
     `data:` : Data returned
     **Returns**
     None

   ### Examples

   #### digitalWrite

   In this example, we will blink the LED which is connected with digital pin (D0 - D13)

   API Required :

   1. public Arduino();
   2. public void pinMode(int pin, byte mode);
   3. public void digitalWrite(int pin, byte value);

   Hardware Required:

   1. LattePanda x 1
   2. led x 1 （or you can use the LED attached to pin 13 on the Arduino board itself）

   Circuit:

   1. LED inserted directly into pin 13
      ![_example_blink](http://www.lattepanda.com/wp-content/uploads/2016/02/example_blink.png)

   Code:

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

   Test：

   1. Click Debug button to execute, the LED will start blinking.

   #### digitalRead

   This example detects the Button state through digital pin (D0-D13). 

   API required:

   1. public Arduino();
   2. public void pinMode(int pin, byte mode);
   3. public int digitalRead(int pin);

   Hardware Required:

   1. LattePanda x 1
   2. Button x 1
   3. Resistor (Resistance value greater than 1KΩ) x 1

   Circuit:

   1. Connect button to pin 12 as following figure shows
      ![_example_button](http://www.lattepanda.com/wp-content/uploads/2016/02/example_button.png)

   Code:

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

   Test:

   1. Click Debug to execute, then the screen will print the value when you push down or release the button

   #### PWM

   This example assigns a pulse width modulation (PWM) value to an output pin (D3, D5, D6, D9, D10, D11) to dim or brighten an LED 

   API Required:

   1. public Arduino();
   2. public void pinMode(int pin, byte mode);
   3. public void analogWrite(int pin, int state);

   Hardware Required:

   1. LattePanda x 1
   2. LED x 1

   Circuit:

   1. LED connected directly into pin 11 as following figure shows
      ![_example_PWM](http://www.lattepanda.com/wp-content/uploads/2016/02/example_PWM.png)

   Code:

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

   Test:

   1. Click Debug to execute, you will find the LED brightness vary form dim to bright and then back again.

   #### analogRead

   This example detect the value of analog pin (A0-A5) where a potentiometer is connected, and then print the value 

   API Required:

   1. public Arduino();
   2. public int analogRead(int pin);
   3. public event AnalogPinUpdated analogPinUpdated;

   Hardware Required:

   1. LattePanda x 1
   2. Potentiometer x 1

   Circuit:

   1. Connect the potentiometer to pin 3 as following figure shows：
      ![_example_analogRead](http://www.lattepanda.com/wp-content/uploads/2016/02/example_analogRead.png)

   Code :

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

   Test：

   1. Click Debug to execute, the state of potentiometer will print when you rotate it.

   #### Servo

   In this example, we will sweep the servo motor back and forth across 180 degrees. 

   API Required:

   1. public Arduino();
   2. public void pinMode(int pin, byte mode);
   3. public void servoWrite(int pin, int angle);

   Hardware Required:

   1. LattePanda x 1
   2. Servo Motor x 1

   Circuit:

   1. Servo inserted directly into pin D9：
      ![_example_Servo](http://www.lattepanda.com/wp-content/uploads/2016/02/example_Servo.png)

   Code :

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

   Test:

   1. Click debug to execute, you will find the motor sweeping forth and back continuously.

   #### I2C

   This example will show you how to use I2C to get the data form 3-axis accelerometer ADXL345 

   API Required:

   1. public Arduino();
   2. public void wireBegin(Int16 delay);
      3.public void wireRequest(byte slaveAddress,Int16 slaveRegister, Int16[] data,byte mode);
   3. public event DidI2CDataReveive didI2CDataReveive;

   Hardware Required:

   1. LattePanda x 1
   2. ADXL345 x 1

   Circuit:

   1. The following is a figure describing which pins on the LattePanda should be connected to the pins on the accelerometer.
      ![_example_ADXL345](http://www.lattepanda.com/wp-content/uploads/2016/02/example_ADXL345.png)

   Code :

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

   Test:

   1. Click Debug to execute, the 3-axis acceleration data will be printing continuous.

   ### Set up your PC

   1. [Download Visual Studio 2015 Here](https://www.visualstudio.com/downloads/download-visual-studio-vs)
      ![image2](http://www.lattepanda.com/wp-content/uploads/2016/02/image2.jpeg)
   2. Enable developer mode on your operating system
      ![image4](http://www.lattepanda.com/wp-content/uploads/2016/02/image4.jpeg)
      ![image5](http://www.lattepanda.com/wp-content/uploads/2016/02/image5.jpeg)
      ![image6](http://www.lattepanda.com/wp-content/uploads/2016/02/image6.jpeg)

   ### Set up the Arduino

   1. Open Arduino. And select the “StandardFirmata”

      ​

      ​

      ​

   2. Select “Arduino Leonardo”
      ![image17](http://www.lattepanda.com/wp-content/uploads/2016/02/image17.png)

   3. Select your COM port
      ![image18](http://www.lattepanda.com/wp-content/uploads/2016/02/image18.png)

   4. Upload the sketch
      ![image19](http://www.lattepanda.com/wp-content/uploads/2016/02/image19.png)

   5. Upload Done!
      ![image20](http://www.lattepanda.com/wp-content/uploads/2016/02/image20.png)

   ### Blink your Board

   1. Open Visual Studio 2015 and create a new app:
      ![createProject1](http://www.lattepanda.com/wp-content/uploads/2016/02/createProject1.png)
      ![createProject2](http://www.lattepanda.com/wp-content/uploads/2016/02/createProject2.png)
   2. [Download the LattePanda.Firmata class library](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata)
   3. Add the downloaded class library to your project Open your Solution Explorer and right-click in the blank area, then add existing item.
      ![addCode](http://www.lattepanda.com/wp-content/uploads/2016/02/addCode.png)
      ![addClass1](http://www.lattepanda.com/wp-content/uploads/2016/02/addClass1.png)
   4. Add the following code to Program.cs.
      - Add the following two lines code before the namespace blinkYourBoard.
        `using System.Threading;`
        `using LattePanda.Firmata;`
        The first namespace contributes to delay and second is LattePanda.Firmata class library namespace
      - Add the following code in the Main Function
        `Arduino arduino = new Arduino();`
        `arduino.pinMode(13, Arduino.OUTPUT);//Set the digital pin 13 as output`
        `while (true)`
        `{`
        `// ==== set the led on or off`
        `arduino.digitalWrite(13, Arduino.HIGH);//set the LED　on`
        `Thread.Sleep(1000);//delay a seconds`
        `arduino.digitalWrite(13, Arduino.LOW);//set the LED　off`
        `Thread.Sleep(1000);//delay a seconds`
        `}`
        The complete code is as follows:
        ![addCode](http://www.lattepanda.com/wp-content/uploads/2016/02/addCode.png)
   5. Finally debug your project
      Connect your Arduino and click Start
      ![start](http://www.lattepanda.com/wp-content/uploads/2016/02/start.png)
      Soon you will find the LED of your Arduino blinking

   # FirmateWebClient: a simple way to access sensors and actuators

   ## Introduction

   This project provides a minimum HTTP-based firmata controller for various hardware, typically Arduino. This extends user's control and monitoring of the hardware using platform-independant URL requests. **Support list:**

   - Digital Pins
   - Analog Pins
   - PWM
   - Servo

   This is just a few of the many possibilities. We welcome you build, extend and experiment with the features you need.

   ## Install and run the client

   You should have the following items ready before beginning the process:

   - clone or Download

      

     this project files in the folder of your choice.

     ​

   - Install

      

     NodeJS.

      

     Make sure that version of NodeJS is greater than 4.0.

     ​

   - Open a new shell or Node.js command prompt and navigate to the folder where you placed the project files. Run the following commands to install `johnny-five` and `serialport` package.

   ```
   npm install johnny-five
   npm install serialport

   ```

   - Follow this [tutorial](http://www.lattepanda.com/docs/#SetuptheArduino) to setup your arduino
   - Run the client using the following commands:

   ```
   node FirmateWebClient.js

   ```

   < h2 id="FirmateWebClient_ Usage">Usage Add these parameters to GET request to control the client, you can also see the following examples to learn how to use it.

   ##### Set digital pin

   Write to a digital pin and set it to output mode

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/set_digital/13/1',//command/the digital pin to write to(0~13)/0 or 1
     method: 'GET'
   };

   ```

   ##### Set PWM pin

   Write to an analog pin using Pulse-width modulation (PWM)

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/set_pwm/3/255',//command/Analog output pin(3,4,6,9,10,11)/0(0V)~255(5V)
     method: 'GET'
   };

   ```

   ##### Set servo pin

   Write the angle to a specified pin and set it to servo mode

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/set_servo/3/255',//command/Servo output pin(0~13)/Angle from 0 to 180.
     method: 'GET'
   };

   ```

   ##### Sweep servo

   Sweep servo from 0-180 and repeat

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/sweep_servo/3',//command/Servo output pin(0~13)
     method: 'GET'
   };

   ```

   ##### Stop servo

   Stop a moving servo

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/stop_servo/3',//command/Servo output pin(0~13)
     method: 'GET'
   };

   ```

   ##### Read all pins state

   It allow you to read all pins state and will return you a json object

   ```
   var url = {
     hostname: 'localhost',//your device ip
     port: 23456,//server port, default 23456
     path: '/read_all_pins',//command
     method: 'GET'
   };

   ```

   You will receive an object like this

   ```
   {
       "command":["read_all_pins"],
       "data":{"0":"false",..."13":"false","A0":"0.75",..."A5":"0.67"}
   }

   ```

   ## Examples

   You can see all the examples in 

   ```
   /examples
   ```

    folder.

   ##### Turn on a LED

   In this example, we will turn on the LED which has connected on digital pin 13.

   - Open a new shell or Node.js command prompt and navigate to `/examples` folder
   - Run the sample using the following commands: `node set_digital.js`

   ##### Set PWM

   This example assigns a pulse width modulation (PWM) value to an output pin (D3, D5, D6, D9, D10, D11) to dim or brighten a LED. In this sample, we use the onboard LED which connects to digital pin 13.

   - Open a new shell or Node.js command prompt and navigate to `/examples` folder
   - Run the sample using the following commands: `node set_pwm.js`

   ##### Set Servo

   In this example, we will set the servo motor to 20 degree.

   - Open a new shell or Node.js command prompt and navigate to `/examples` folder
   - Insert servo into pin D9
   - Run the sample using the following commands: `node set_servo.js`

   ##### Read Light Sensor Output

   This example detect the value of a light sensor via analog pin(A0~A5)

   - Open a new shell or Node.js command prompt and navigate to `/examples` folder
   - Connect a [Light Sensor](http://www.lattepanda.com/product-details/?pid=6) to analog pin A0
   - Run the sample using the following commands: `node read_analog.js`
   - the value of the sensor will be printed out.

   Click to see more user experience.

   # Project Examples

   ## Turn a LattePanda in to a 3D Print Server Using Octoprint

   OctoPrint is an open source software which is designed to manage 3D printers. It enables you to control and monitor a 3D printer remotely from any web browser just as if you were sitting in front of it, even if it’s on the other side of your house, in your garage, or on the other side of the world. In addition to this it can slice models by dragging and dropping .stl or .obj files on to the web UI and you can view print jobs in progress and create time lapses when you connect an ordinary USB webcam!

   In this tutorial we will discuss how to control and monitor a 3D printer remotely using OctoPrint and LattePanda. 

   What We Need

   Before we begin you will need to prepare the following equipment:

   1. LattePanda
   2. A 3D printer (We have opted for the Overlord 3D Printer from DREAMMAKER)

   What is the DREAMMAKER Overlord?

   The DREAMMAKER Overlord is a 3D printer that is affordable, smart and stylish. It has many advantages such as:

   1. A fusion of oriental classic and minimalism design
   2. Up to 16 Pantone standard colors for your unique taste
   3. Optimized operation on Windows/Mac OS/Linux
   4. Auto calibration
   5. Industrial Delta armature that enables a high level of repeated accuracy

   The following section will walk through how to install OctoPrint and connect your 3D printer 

   Let’s get started:

   ### Step 1: Install OctoPrint

   To install OctoPrint follow the official tutorial:

   Windows https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows

   In the tutorial you need to install Python 2.7 and Microsoft Visual C++ Compiler for Python 2.7 and then execute some command statements

   ### Step 2: Start OctoPrint in a Web Browser

   When you complete last step in the section 1, the command window will show some information as following figures show:

   In the lower right corner of the command window there are two URLs 

   ```
   http://127.0.0.1:5000
   ```

    and 

   ```
   http://192.168.2.104:5000
   ```

    They are highlighted with red rectangles in the image.

   The first URL is your localhost URL. You may access the OctoPrint web UI on the PC connected to the Printer using this URL.

   The second URL is used to Connect to your 3D printer remotely from another PC on the same local Network as your LattePanda. The address 192.168.2.104 is actually your LattePanda's IP address. If the CMD window doesn't emerge the second URL, you can look for the IP address in Network and Sharing Center and attach the port number 

   ```
   :5000
   ```

    at the end of IP address.

   #### Please Note:

   1. We recommend using Google Chrome as a browser. This has been tested in Microsoft Edge, and wasn't able to work without some further calibration.
   2. Do not close the command window when you attempt to open OctoPrint in your web browser, or you will see the following figure.
      ![OctoPrint_offline](http://www.lattepanda.com/wp-content/uploads/2016/02/OctoPrint_offline.png)
   3. How to Start OctoPrint
      When we set up OctoPrint, there is no desktop icon or launcher. How can we open it when we need to use it? Just open the directory `F:\OctoPrint\venv\Scripts` and find the file `octoprint.exe`, double click it.
      Then the familiar command window will emerge where you can find the two URLs in the lower right corner. Input the URLs in to your web browser as before.

   ### Step 3: Connect to your 3D Printer

   Log in your account (create one if you don't have one) and click Settings. Select "Printer Profiles" to add your printer. Choose your printer name and set some parameters similar to the following:

    Set the Serial Port and BaudRate as AUTO and select the Printer Profile "Overlord" that you created on the previous step

    When you connect to the Overlord successfully, you should see the following information.

    If Octoprint fails to connect try restarting your 3D printer, refresh the OctoPrint web interface or disconnect and reconnect the USB cable.

   ### Step 4：How to Upload Files and Print

   Open the OctoPrint Web interface and press the upload button in the lower left corner to upload a .gcode file. When the upload is complete, you can click the print button, then the printer will begin to print the file. You can monitor the print time elapsed, remaining print time, nozzle temperature and also pause or cancel a running job as the following figure shows:

    You can now open OctoPrint on other computer or phone (connected to the same local Network as your LattePanda) and log in to monitor and control your printer remotely! Feel free to contact us if you have any queries. We will give advice as soon as we can.

   ### References

   1. http://www.dfrobot.com.cn/community/thread-13090-1-1.html
   2. https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows
   3. http://www.lattepanda.com/product-detail/?pid=2
   4. http://www.dreammaker.cc/

   ## Face Detection using OpenCV

   What is OpenCV

   OpenCV (Open Source Computer Vision) is released under a BSD license and hence it’s free for both academic and commercial use. It has C++, C, Python and Java interfaces and supports Windows, Linux, Mac OS, iOS and Android. OpenCV was designed for computational efficiency and with a strong focus on real-time applications. Written in optimized C/C++, the library can take advantage of multi-core processing.

   Adopted all around the world, OpenCV has more than 47 thousand people of user community and estimated number of downloads exceeding 9 million. Usage ranges from interactive art, to mines detection, online maps and advanced robotics. 

   Let’s get started:

   ### Step 1：Install Visual Studio 2015 and OpenCV

   1. Install Visual Studio 2015 on your computer
      Head over to https://www.visualstudio.com/products/visual-studio-professional-with-msdn-vs and download Visual Studio Professional 2015. Unzip the downloaded file and double-click the 'vs_professional.exe', then the installation process will begin.
   2. Install OpenCV Head over to the site: http://www.opencv.org and download the latest version of OpenCV (shown in the following figure). Choose the version according to your operating system.
      In this tutorial we are going to install OpenCV 3.1 using Visual Studio 2015 professional on a 64-bit system running Windows 10.
      ![OpenCV_imageOpenCVDownload](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_imageOpenCVDownload.png)
      Extract the downloaded OpenCV file
      Double click the downloaded OpenCV file, and then extract it
      ![OpenCV_extractOpenCV](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_extractOpenCV.png)

   ### Step 2: Set the Environment Variables

   1. To do this step, open the Control Panel and then System. Click the Advanced System Settings, last Environment Variables in turns as show in the following figure.
      ![OpenCV_variables1](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_variables1.png)
   2. Edit the PATH environment variables and Add a new environment variable, then give it the value of `F:\opencv\build\x64\vc14\bin`. Note that change the value depends on the path where you have extracted your OpenCV in step 2.
      ![OpenCV_variables2](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_variables2.png)

   ### Step 3: Create a new project in Visual Studio 2015

   1. In Visual Studio 2015, create a new project to follow the steps in turns as the following figure shows
      ![OpenCV_newProject1](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_newProject1.png)
   2. Select Win32 Console Application in Visual C++, then name your project and select a directory to store it
      ![OpenCV_newProject2](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_newProject2.png)
   3. Choose the empty project and click finish
      ![OpenCV_newProject3](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_newProject3-300x217.png)
   4. Add a new cpp file
      ![OpenCV_newProject4](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_newProject4.png) ![OpenCV_newProject5](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_newProject5.png)

   ### Step 4: Configure OpenCV in Visual Studio 2015

   1. Open the Property Manager and double click Debug|Win64
      ![OpenCV_property1](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_property1.png)
   2. Select "Include Directories", and give it the following values:
      `F:\opencv\build\include`
      `F:\opencv\build\include\opencv`
      `F:\opencv\build\include\opencv2`
      Remember that change the value depending on the path you have extracted your OpenCV files to in step 2.
      ![OpenCV_property2](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_property2.png)
   3. Add Library Directories, give the value of`F:\opencv\build\x64\vc14\lib`. Remember that changing the values depends on the path where you have extracted your OpenCV in step 2
      ![OpenCV_property3](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_property3.png)
      1.Add additional dependences
      Copy the following item and paste it in additional Dependences blank `opencv_world310d.lib`
      ![OpenCV_property4](http://www.lattepanda.com/wp-content/uploads/2016/02/OpenCV_property4-300x207.png)

   ### Step 5: Paste the following code to the .cpp file your added in step 4.

   ```
   #include&lt;opencv2\objdetect\objdetect.hpp&gt;
   #include&lt;opencv2\highgui\highgui.hpp&gt;
   #include&lt;opencv2\imgproc\imgproc.hpp&gt;
   #include&lt;iostream&gt;
   #include&lt;stdio.h&gt;

   using namespace std;
   using namespace cv;

   string harrEye = &quot;..\\..\\..\\resources\\harr\\haarcascade_eye_tree_eyeglasses.xml&quot;;
   string harrFace = &quot;..\\..\\..\\resources\\harr\\haarcascade_frontalface_alt.xml&quot;;
   CascadeClassifier faceCascade;
   CascadeClassifier EyeCascade;
   string windownName = &quot;Capture faces and eyes &quot;;
   void detectAndDiapley(Mat frame);

   int main()
   {
       Mat frame;

       // load the cascades
       if (!EyeCascade.load(harrEye))
           cout &lt;&lt; &quot;load harrEye failed&quot; &lt;&lt; endl;
       if (!faceCascade.load(harrFace))
           cout &lt;&lt; &quot;load harrFace failed&quot; &lt;&lt; endl;

       // read the video stream
       VideoCapture capture(0);
       if (capture.isOpened())
       {
           while (true)
           {
               capture &gt;&gt; frame;

               // apply the cascaders to the frame
               if (!frame.empty())
               {
                   detectAndDiapley(frame);
               }
               else
               {
                   cout &lt;&lt; &quot;input video frame is empty&quot; &lt;&lt; endl;
               }
               if (waitKey(30) &gt;= 0)break;
           }
       }
       return 0;
   }

   void detectAndDiapley(Mat frame)
   {
       vector&lt;Rect&gt; faces;
       Mat frameGray;
       cvtColor(frame, frameGray, CV_BGR2GRAY);
       equalizeHist(frameGray, frameGray);

       //Detect faces
       faceCascade.detectMultiScale(frameGray, faces, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));
       for (int i = 0; i &lt; faces.size(); i++)
       {
           Point Vertex1(faces[i].x, faces[i].y);
           Point Vertex2(faces[i].x + faces[i].width, faces[i].y + faces[i].height);
           rectangle(frame, Vertex1, Vertex2, Scalar(0, 0, 255), 2, 8, 0);
           Mat faceROI = frameGray(faces[i]);
           vector&lt;Rect&gt; eyes;

           // detect eyes in each face
           EyeCascade.detectMultiScale(faceROI, eyes, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));
           for (int j = 0; j &lt; eyes.size(); j++)
           {
               Point center(faces[i].x + eyes[j].x + eyes[j].width / 2, faces[i].y + eyes[j].y + eyes[j].height / 2);          
         int radius = cvRound((eyes[j].width + eyes[j].height)*0.25);
               Size axes(eyes[j].width / 2, 13);
               ellipse(frame, center, axes, 0, 0, 360, Scalar(255, 255, 0), 2, 8, 0);
           }
       }
       // show the faces and eyes detected
       imshow(windownName, frame);
   }

   ```

   ### Step 6: Debug your Project

   Set two options as following figure shows:

   Press F5 to execute the face detection project, your PC camera will turn on and your face and eyes will be highlighted like so:

   ### References:

   1. http://www.michaelpsyllakis.com/install-opencv-on-visual-studio-2015-community-tutorial/
   2. http://docs.opencv.org/2.4/opencv_tutorials.pdf
   3. http://docs.opencv.org/2.4/opencv2refman.pdf

   ## Node-RED

   Node-RED

    is a visual programming tool for Internet of Things. IBM is actively bringing its latest functions, including Waston and IOT service, into the toolbox ever since its acquisition.

   Here we are taking the advantage of the Node-RED tool and the email service to build a simple but awesome IOT control unit. You can remotely control your Arduino board by sending an email to your own account. The process roughly takes half an hour, with minimum coding required.

   ### Hardware list

   - LattePanda

   ### Software setup

   1. [Flash Firmata into Your Uno Board](http://www.lattepanda.com/docs/#SetuptheArduino)
   2. [Install Node-RED](http://nodered.org/docs/getting-started/installation).
   3. Please follow the [official Arduino documentation from Node-RED](http://nodered.org/docs/hardware/arduino).
      As soon as you get past the first blinking example, you can start to go to the IOT part.
   4. Build Control flow
      Here is the simple flow setup.
      ![node-red_flow](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_flow.png)
   5. Configure Email Node
      Now we can configure the email node. I am using the Microsoft office email server. If you are using other email service providers, please check your server settings for setting up an `imap` client.
      ![node-red_email](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_email.png)
      And also if you are using *Gmail*, you need to create an application specific password for third-party application authentication.

6. Configure Function Node We need a tiny bit of code to interpret the email messages before relay that on to your Arduino board. Specifically, we are using the email's **subject** to control our Arduino board. Because some server may automatically attach or transform the email **body** content or format for better user experience (in its own opinion), it would be easier to write working code for our example using only the **email subject**.
   Here is the code

   `javascript`
   `msg.payload = parseInt(msg.topic);`
   `return msg;`

   ![node-red_function](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_function.png)

7. Configure the Arduino LED Node You should have configured the LED node on pin 13 already if you have passed the example. But here is a screenshot just in case.
   ![node-red_pin](http://www.lattepanda.com/wp-content/uploads/2016/02/node-red_pin.png)

8. Test

   Now you can send an email to your account, with the subject of a single digit: 1( or 0 if your pin 13 LED is already turned on). You should see the LED on the board change after about 10 or 20 seconds after you have sent the email.

   You can leave the email body empty, we are not going to use that part for now. However you can choose to try more tricks with the email body once you feel more confident.

# How It Works

According to Node-RED documentation, the email node will try to get your latest email from the given mail folder between the given time interval. It will notice any new email, and pass on email information to our logical function. Then our function tries to interpret the subject to an integer and fill in the data our Arduino output pin needs. Finally the Arduino pin node controls the board using firmata protocol and changes the LED status.


I really wish you had fun using Node-RED and Arduino. Firmata is a great way to communicate with the board, and Node-RED surely is a fast way to build IOT control layer. Plus you don't have to pay for email service these days, so you don't even need to buy public domain IP address to remotely control your board across different network domains. All you need is something that runs nodejs with a serial port. On that part I would recommend either the [Raspberry Pi](http://www.dfrobot.com/index.php?route=product/search&description=true&search=berry) (runs Linux based system )or the [LattePanda](http://www.dfrobot.com/index.php?route=product/product&product_id=1405&search=lattepanda&description=true#.V1RIHVd7zCc) ( runs standard windows 10).
