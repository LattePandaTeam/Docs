# How to Use Python to Make Your Arduino Blink

##Introduction

In this tutorial, we will show you how to control your Arduino using Python. We will use the LattePanda with the built in Arduino for this example and show you the basics of how to make the LED light blink. Once you master this technique, you can play around with the code yourself to control your Arduino with python code.

![](https://i.imgur.com/Jn1Tk29.gif)

##What You Need

**Hardware**

- LattePanda
- 7-inch 1024 x 600 IPS Display for LattePanda
- Mouse and Keyboard

**Software**

1. **Arduino IDE**

The latest software is available on the [Arduino website](https://www.arduino.cc/en/Main/Software?). IDE stands for integrated development environment, and it allows programmers to develop software. Make sure to download the most updated Arduino IDE. This example uses Arduino 1.8.5.

2. **Python 2.7.15**

This software is available on Python's official website. This example uses python 2.7.15, which can be found [here](https://www.python.org/downloads/release/python-2715/). I've used the following installer to install my python IDE:

![](https://i.imgur.com/3xrIIyu.png?1)

When installing, please make sure to select "add python.exe to Path" by clicking on the "Will be installed on local hard drive" option. This is shown below.

![](https://i.imgur.com/mqlndqy.png?1)

Once everything is ready, we can start the process.



## Step 1

Similar to the [C# tutorial](http://docs.lattepanda.com/content/hardware/accessPinoutsFromVS/), we will need to upload the StandardFirmata code onto your local Arduino device. You can access the code by clicking File --> Examples --> Firmata --> StandardFirmata, as shown below.

![](https://i.imgur.com/CSW8W4y.png)

After the code appears, select the correct Arduino type and port, as shown below.

<u>Finding the correct Arduino type</u>

![](https://i.imgur.com/VxzX1v6.png)

<u>With the corresponding port</u>

![](https://i.imgur.com/eIobTs1.png)



Once these have been selected, upload the code to your Arduino by clicking the arrow shown below.

![](https://i.imgur.com/RW6uOB4.png)

Wait for the code to be uploaded.

![](https://i.imgur.com/ABxURuz.png)



## Step 2

The next step is to install the firmata package through the command prompt window. Make sure to right-click and run the command prompt as administrator.

<u>After clicking this</u>

![](https://i.imgur.com/H3qsWIF.png?1)

<u>This window should appear</u>

![](https://i.imgur.com/6rMlGNu.png?1)

Type the following command into your command prompt window: 

`pip install pyFirmata` 

The following message will be shown if the installation is successful.

![](https://i.imgur.com/2otp3ED.png?1)



## Step 3

Open IDLE Python to check whether or not the pyfirmata package has been installed correctly.

Enter the following command:

`import pyfirmata`

If no error message appears, this means that pyfirmata has been successfully installed. Please refer to the picture below.

![](https://i.imgur.com/L3yZO66.png?1)

 

Create a new python file through the IDLE program and enter the following code. Change 'COM3' into the port that was shown on your device previously on Arduino. Pin 13 is selected as the default pin, as it has the built-in light. 

<u>Code:</u>

```
from pyfirmata import Arduino, util
import time
board = Arduino('COM5')

    board.digital[13].write(0)
    time.sleep(1)
    print("on")
    board.digital[13].write(1)
    time.sleep(1)
    print("off")
```

The IDLE window should display on/off messages which represent the status of the light. Feel free to play around with the other pins and explore the different options available to you. Here is the GIF again on how your Arduino should blink. Enjoy!

![](https://i.imgur.com/Jn1Tk29.gif)


