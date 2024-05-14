# Introduction

In this tutorial, we will discuss how to control and monitor a 3D printer remotely using OctoPrint and a LattePanda SBC.

Before we begin, you will need to prepare the following equipment:

1. LattePanda
2. A 3D printer (We have opted to use the Overlord 3D Printer from DREAMMAKER in this instructional guide)

### What is OctoPrint?

OctoPrint is an open source software which is designed to manage 3D printers. It enables you to control and monitor a 3D printer remotely from any web browser just as if you were sitting in front of it, even if it’s on the other side of your house, in your garage, or on the other side of the world. In addition to this, it can slice models by dragging and dropping .stl or .obj files onto the web UI, and you can view print jobs in progress and create time lapses with even an ordinary USB webcam!

### What is the DREAMMAKER Overlord?
The DREAMMAKER Overlord is a 3D printer that is affordable, smart, and stylish. It has many advantages, such as:

1. A fusion of oriental, classic, and minimalist design
2. Up to 16 Pantone standard colors of PLA plastic to suit your color and design needs
3. Optimized operation on Windows/Mac OS/Linux
4. Auto-Calibration
5. Industrial Delta armature that enables a high level of repeated accuracy

## Getting Started: 

### Step 1: Install OctoPrint
To install OctoPrint, follow the official tutorial:<BR>

[Windows](https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows)

In this tutorial, you will need to install Python 2.7 and Microsoft Visual C++ Compiler for Python 2.7, and then you will need to execute some command statements

### Step 2: Start OctoPrint in a Web Browser
When you complete the last step in Section 1, the command window will show some information, as the following figures below show:

![](https://i.imgur.com/YWZ0woy.png)

In the lower right-hand corner of the command window there are two URLs `http://127.0.0.1:5000` and `http://192.168.2.104:5000` . These URLs can be found in the places shown in the red rectangles in the image below.

The first URL is your localhost URL. You may access the OctoPrint web UI on the PC connected to the Printer using this URL.

![](https://i.imgur.com/D1RD64p.png)

The second URL is used to Connect to your 3D printer remotely from another PC on the same local network as your LattePanda. The address 192.168.2.104 is actually your LattePanda's IP address. If the CMD window doesn't display the second URL, you can look for the IP address in your computer's Network and Sharing Center and attach the port number `:5000` at the end of the IP address you find.

#### Please Note
1. We recommend using the Google Chrome browser for these steps. These operations have been tested in Microsoft Edge and did not perform successfully without further modifications and calibrations.
2. Do not close the command window when you attempt to open OctoPrint in your web browser or you will see the following figure.

  ![](https://i.imgur.com/ixkedGO.png)

3. How to Start OctoPrint

When we set up OctoPrint, there is no desktop icon or launcher. So, in order to open the software and start using it, you will need to open the directory `F:\OctoPrint\venv\Scripts` and find the file `octoprint.exe`. Now you can double click it and start up the program.

Then, the familiar command window will emerge, and now you can find the two URLs in the lower right-hand corner again. Input the URLs into your web browser just as you did for the steps above.

### Step3: Connect to Your 3D Printer

#### Set OctoPrint

1. Log into your account (or create one if you don't have one) and click Settings. Select "Printer Profiles" to add your printer. Choose your printer name and set your settings parameters similar to the ones listed below:<BR>

![](https://i.imgur.com/SjgmwWD.png)

![](https://i.imgur.com/gyzZ1Zq.png)

#### Connect to the Overlord
Set the Serial Port and BaudRate as AUTO and select the Printer Profile "Overlord" that you created on the previous step

![](https://i.imgur.com/awBMEmn.png)

When you connect to the Overlord successfully, you should see the following information.

![](https://i.imgur.com/qpo1Cbv.png)

If Octoprint fails to connect, try restarting your 3D printer, and then refresh the OctoPrint web interface or disconnect and reconnect the USB cable.

### Step 4: How to Upload Files and Print

Open the OctoPrint Web interface and press the upload button in the lower left-hand corner to upload a .gcode file. When the upload is complete, you can click the print button, and then the printer will start printing the file. You can monitor the print time elapsed, remaining print time, nozzle temperature, and even pause or cancel a running job, as the following figure shows:

![](https://i.imgur.com/7M3bE7S.png)

You can now open OctoPrint on any other computer or phone (connected to the same local Network as your LattePanda) and log in to the  monitor and control your printer remotely!

Feel free to contact us if you have any queries. We will reply to your questions as soon as we can.

#### References
1. [OctoPrint](https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows)
2. [DreamMaker](http://www.dreammaker.cc/)
