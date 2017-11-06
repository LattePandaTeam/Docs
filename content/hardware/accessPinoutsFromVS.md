# Introduction

This class allows you to control Arduino GPIO from Windows apps, with features including:
● Reading and writing to digital pins
● Reading analog inputs
● Controlling servo motors
● Sending data to devices and receiving data form devices through the I2C Bus

## Step 1: Set up your PC

1. [Download Visual Studio 2015 Here](https://www.visualstudio.com/downloads/download-visual-studio-vs)
   ![image2](http://www.lattepanda.com/wp-content/uploads/2016/02/image2.jpeg)

2. Enable developer mode on your operating system

   ![image4](http://www.lattepanda.com/wp-content/uploads/2016/02/image4.jpeg)
   ![image5](http://www.lattepanda.com/wp-content/uploads/2016/02/image5.jpeg)
   ![image6](http://www.lattepanda.com/wp-content/uploads/2016/02/image6.jpeg)

3. Download [LattePanda.Firmata](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata)

   [LattePanda.Firmata](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata) is an open-source Firmata library provided by LattePanda, which is suitable for Windows apps developed in Visual Studio. This class allows you to control Arduino GPIO from Windows apps, with features including:

   ● Reading and writing to digital pins

   ● Reading analog inputs

   ● Controlling servo motors

   ● Sending data to devices and receiving data form devices through the I2C Bus

# Step 2: Set up the Arduino

### Set up the Arduino

1. Open Arduino. And select the “StandardFirmata”

   ![image16](http://www.lattepanda.com/wp-content/uploads/2016/02/image16.png)

2. Select “Arduino Leonardo”
   ![image17](http://www.lattepanda.com/wp-content/uploads/2016/02/image17.png)

3. Select your COM port
   ![image18](http://www.lattepanda.com/wp-content/uploads/2016/02/image18.png)

4. Upload the sketch
   ![image19](http://www.lattepanda.com/wp-content/uploads/2016/02/image19.png)

5. Upload Done!
   ![image20](http://www.lattepanda.com/wp-content/uploads/2016/02/image20.png)

# Step 3: Blink your Board

Create a project or use the [sample project](http://www.lattepanda.com/wp-content/uploads/2016/02/blinkYourBoard.zip)

1. Open Visual Studio 2017 and create a new app:
   ![createProject1](http://www.lattepanda.com/wp-content/uploads/2016/02/createProject1.png)
   ![createProject2](http://www.lattepanda.com/wp-content/uploads/2016/02/createProject2.png)
2. [Download the LattePanda.Firmata class library](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/LattePandaFirmata)
3. Add the downloaded class library to your project Open your Solution Explorer and right-click in the blank area, then add existing item.
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

