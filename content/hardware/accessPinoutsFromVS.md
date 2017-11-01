## How to access pinouts from Visual Studio

### LattePanda.Firmata

[LattePanda.Firmata](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata) is an open-source Firmata library provided by LattePanda, which is suitable for Windows apps developed in Visual Studio. This class allows you to control Arduino GPIO from Windows apps, with features including:

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

- `public void wireRequest(byte slaveAddress,Int16 slaveRegister, Int16[] data,byte mode);`

  Request I2C devices to send or receive data, then call `didI2CDataReveive` event to handle data when receive data.
  **Parameters** `slaveAddress:` the 7-bit address of the device to request bytes from
  `slaveRegister:` Specify the register that you want to store data or read data, choose `Arduino.NONE`if there is empty.

  `data`:

  1. when set the Parameter `mode` as `Arduino.I2C_MODE_WRITE` ,the data such as `{0x00,0x01}` will be sending to devices through I2C BUS.
  2. when set the Parameter `mode` as`Arduino.I2C_MODE_READ_ONCE` or `Arduino.I2C_MODE_READ_CONTINUOUSLY` , data specify the length of received data.

  `mode`:

  1. `Arduino.I2C_MODE_WRITE` :Send data
  2. `Arduino.I2C_MODE_READ_ONCE` : Receive data once
  3. `Arduino.I2C_MODE_READ_CONTINUOUSLY` :Receive data continuous
  4. `Arduino.I2C_MODE_STOP_READING` :Stop receiving data

  **Returns**
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


