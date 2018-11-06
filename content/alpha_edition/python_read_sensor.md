## How to Use Python to Read Off Sensors

## Introduction

In this tutorial, I will show you how to read information off an analog and a digital sensor connected to an Arduino using Python. I will be using the built in Arduino Leonardo on the LattePanda, and read off a digital PIR sensor as well as an analog rotation sensor. Once you master this technique, you can play around with the code to read different signals off of different pins.

##What you need

**Hardware**

- LattePanda
- 7-inch 1024 x 600 IPS Display for LattePanda
- Mouse and Keyboard
- Analog Rotation sensor. Which can be found [here](https://www.dfrobot.com/product-86.html).
- Digital PIR Motion sensor.  Which can be found [here.](https://www.dfrobot.com/product-1140.html)


**Software**

1.**Arduino IDE**

The latest software is available on the [Arduino website](https://www.arduino.cc/en/Main/Software?). IDE stands for integrated development environment which allows programmers to develop software. Make sure to download the most updated Arduino IDE, I'm using Arduino 1.8.5.

2.**Python 2.7.15**

Available on python website. I've used python 2.7.15 found [here](https://www.python.org/downloads/release/python-2715/). I've used the following installer to install my python IDE:

![](https://i.imgur.com/3xrIIyu.png?1)

Please make sure that when installing to select to add python.exe to Path by clicking on the "Will be installed on local hard drive" option. This is shown below.

![](https://i.imgur.com/mqlndqy.png?1)

Once everything is ready we can start the process.



## Step 1

Similar to the [C# tutorial](http://docs.lattepanda.com/content/hardware/accessPinoutsFromVS/), we will need to upload the StandardFirmata code onto your local Arduino device. You can access the code by clicking File --> Examples --> Firmata --> StandardFirmata, as shown below.

![](https://i.imgur.com/CSW8W4y.png)

After the code appears, select the correct Arduino type and port as shown below.

<u>Finding the correct Arduino type</u>

![](https://i.imgur.com/VxzX1v6.png)

<u>With the corresponding port</u>

![](https://i.imgur.com/eIobTs1.png)



Once they have been selected, upload the code to your Arduino by clicking the arrow shown below.

![](https://i.imgur.com/RW6uOB4.png)

Wait for the code to be uploaded.

![](https://i.imgur.com/ABxURuz.png)



## Step 2

The next step is to install the firmata package through the command prompt window. Make sure to right-click and run the command prompt as administrator.

<u>After clicking this</u>

![](https://i.imgur.com/H3qsWIF.png?1)

<u>It should appear like this</u>

![](https://i.imgur.com/6rMlGNu.png?1)

Type the following command in your command prompt window: 

`pip install pyFirmata` 

The following message will be shown if the installation is successful.

![](https://i.imgur.com/2otp3ED.png?1)



## Step 3

Open IDLE Python to check whether or not the pyfirmata package has been installed correctly.

Enter the following command:

`import pyfirmata`

If no error message appears, it means that firmata has been successfully installed. Please refer to the picture below.

![](https://i.imgur.com/L3yZO66.png?1)

Everything is now ready for you to connect your sensor to. The section below talks about reading information from an analog sensor. If you want to learn about the digital sensor, please refer to the corresponding bit after.

### Analog Rotation sensor

The Rotation Sensor is an Arduino-compatible multi-ring analog rotation sensor. It is based on multi-turn precision potentiometer and is capable of ten full rotations. If the sensor input is 5V, then 5000mV will be divided into 3600 portions (10 rotations). When you adjust the rotation by 3 degrees and then the voltage will have 2mV change, so you can accurately achieve the effect of voltage with small changes. It can be easily connected to a LattePanda using a Gravity connection.  

#### Connecting the Analog Rotation Sensor

Once the LattePanda has been set up, connect the rotation sensor to pin A0 (4th pinhole on the left). Please refer to the LattePanda guide below.

![](https://i.imgur.com/JvZsySW.png)

Make sure the black cable is facing outside of the LattePanda like this: 

![](https://i.imgur.com/y4vCppX.jpg)

#### Analog Rotation Sensor Code

Create a new python file through the IDLE program and enter the following code. Change 'COM5' into the port that was shown on your device previously on Arduino. An iterator is required to make sure the loop continues and doesn't overflow when reading so many values. In order to print the value of the pinhole, it must be allowed to send values by enabling the reporting. Pin(0) is chosen, as before we had inserted the rotation sensor into pin A0.

<u>Code:</u>

```
from pyfirmata import Arduino, util
from pyfirmata.util import Iterator
import time
board = Arduino('COM5') #Select the correct port
it = util.Iterator(board)
it.start()
while True:
   board.analog[0].enable_reporting()
    print(board.analog[0].read())
   time.sleep(0.5)
```



The IDLE window should show the different values corresponding to the rotation sensor. The values should go up and down, between 0 and 1, as you turn the sensor. Feel free to play around with other analog sensors to read and write information from your built in Arduino. Here is a GIF on how the rotation sensor works. Enjoy!

![](https://i.imgur.com/bX32TkX.gif)



### Digital PIR Motion Sensor

The PIR sensor is designed to sense motion. They are small, inexpensive, low-power, easy to use and don't wear out. The PIR Sensor can detect infrared signals from the human body or other animals and is triggered by their movement. So it can be applied to a variety of scenarios which require motion detection. This new PIR sensor is smaller than the conventional ones which makes it perfect for your Arduino projects! It can also be easily connected to your LattePanda using a Gravity connection.

#### Connecting the Digital PIR Sensor

Once the LattePanda has been set up, connect the PIR Motion to pin D9 (1st pinhole on the left). Please refer to the LattePanda guide below.

![](https://i.imgur.com/JvZsySW.png)

Once again, make sure the black cable is facing outside of the LattePanda like this:

![](https://i.imgur.com/yuO9I2K.jpg)

#### Digital PIR Sensor Code

Create a new python file through the IDLE program and enter the following code. Change 'COM5' into the port that was shown on your device previously on Arduino. An iterator is required to make sure the loop continues and doesn't overflow when reading so many values. Pin(9) is chosen, as before we had inserted the rotation sensor into pin D9.

<u>Code:</u>

```
from pyfirmata import Arduino, util

import time
board = Arduino('COM5') #Select the correct port
board.get_pin('d:9:i')
thread = util.Iterator(board)
thread.start()

time.sleep(1) 

while True:
    if board.digital[9].read()== True:
        print('!!!')
   else:
        print('No one')
   time.sleep(0.5)
```

The IDLE window should show a Boolean data type with either one of two values. This will either be true or false depending on whether or not motion has been detected.  In the code, if motion is detected, the sensor will read 'True' and print out '!!!' as warning, while if no motion is detected the sensor will continuously print 'No one'. Feel free to play around with other digital sensors to read and write information from your built in Arduino. Here is a GIF on how the PIR Motion sensor works. Enjoy!

![](https://i.imgur.com/UdYty5P.gif)

## Additional Information

Attached is a PDF with some PyFirmata functions to use in Python that I have based some of my code on. [Here](https://media.readthedocs.org/pdf/pyfirmata/latest/pyfirmata.pdf) is the PDF. Enjoy tinkering with your Arduino using Python!