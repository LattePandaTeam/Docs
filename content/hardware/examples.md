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

