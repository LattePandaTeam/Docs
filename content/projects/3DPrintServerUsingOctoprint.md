# Introduction

In this tutorial we will discuss how to control and monitor a 3D printer remotely using OctoPrint and LattePanda.

## What We Need
Before we begin you will need to prepare the following equipment:
1. LattePanda
2. A 3D printer (We have opted for the Overlord 3D Printer from DREAMMAKER)

### What is OctoPrint?

OctoPrint is an open source software which is designed to manage 3D printers. It enables you to control and monitor a 3D printer remotely from any web browser just as if you were sitting in front of it, even if it’s on the other side of your house, in your garage, or on the other side of the world. In addition to this it can slice models by dragging and dropping .stl or .obj files on to the web UI and you can view print jobs in progress and create time lapses when you connect an ordinary USB webcam!

### What is the DREAMMAKER Overlord?
The DREAMMAKER Overlord is a 3D printer that is affordable, smart and stylish. It has many advantages such as:
1. A fusion of oriental classic and minimalism design
2. Up to 16 Pantone standard colors for your unique taste
3. Optimized operation on Windows/Mac OS/Linux
4. Auto calibration
5. Industrial Delta armature that enables a high level of repeated accuracy

## Steps: 

The following section will walk through how to install OctoPrint and connect your 3D printer, **Let’s get started:**

### Step 1: Install OctoPrint
To install OctoPrint follow the official tutorial:<BR>

Windows https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows

In the tutorial you need to install Python 2.7 and Microsoft Visual C++ Compiler for Python 2.7 and then execute some command statements

### Step 2: Start OctoPrint in a Web Browser
When you complete last step in the section 1, the command window will show some information as following figures show:

![](https://i.imgur.com/YWZ0woy.png)

In the lower right corner of the command window there are two URLs `http://127.0.0.1:5000` and `http://192.168.2.104:5000` They are highlighted with red rectangles in the image.

The first URL is your localhost URL. You may access the OctoPrint web UI on the PC connected to the Printer using this URL.

![](https://i.imgur.com/D1RD64p.png)

The second URL is used to Connect to your 3D printer remotely from another PC on the same local Network as your LattePanda. The address 192.168.2.104 is actually your LattePanda's IP address. If the CMD window doesn't emerge the second URL, you can look for the IP address in Network and Sharing Center and attach the port number `:5000` at the end of IP address.

#### Please Note
1. We recommend using Google Chrome as a browser. This has been tested in Microsoft Edge, and wasn't able to work without some further calibration.
2. Do not close the command window when you attempt to open OctoPrint in your web browser, or you will see the following figure.

  ![](https://i.imgur.com/ixkedGO.png)

3. How to Start OctoPrint

When we set up OctoPrint, there is no desktop icon or launcher. How can we open it when we need to use it? Just open the directory `F:\OctoPrint\venv\Scripts` and find the file `octoprint.exe`, double click it.
Then the familiar command window will emerge where you can find the two URLs in the lower right corner. Input the URLs in to your web browser as before.

### Step3: Connect to your 3D Printer

#### Set OctoPrint

1. Log in your account (create one if you don't have one) and click Settings. Select "Printer Profiles" to add your printer. Choose your printer name and set some parameters similar to the following:<BR>

![](https://i.imgur.com/SjgmwWD.png)

![](https://i.imgur.com/gyzZ1Zq.png)

#### Connect to the Overlord
Set the Serial Port and BaudRate as AUTO and select the Printer Profile "Overlord" that you created on the previous step

![](https://i.imgur.com/awBMEmn.png)

When you connect to the Overlord successfully, you should see the following information.

![](https://i.imgur.com/qpo1Cbv.png)
If Octoprint fails to connect try restarting your 3D printer, refresh the OctoPrint web interface or disconnect and reconnect the USB cable.

## Step 4: How to Upload Files and Print

Open the OctoPrint Web interface and press the upload button in the lower left corner to upload a .gcode file. When the upload is complete, you can click the print button, then the printer will begin to print the file. You can monitor the print time elapsed, remaining print time, nozzle temperature and also pause or cancel a running job as the following figure shows:

![](https://i.imgur.com/7M3bE7S.png)

You can now open OctoPrint on other computer or phone (connected to the same local Network as your LattePanda) and log in to monitor and control your printer remotely!

Feel free to contact us if you have any queries. We will give advice as soon as we can.

#### References
1. http://www.dfrobot.com.cn/community/thread-13090-1-1.html
2. https://github.com/foosel/OctoPrint/wiki/Setup-on-Windows
3. http://www.lattepanda.com/product-detail/?pid=2
4. http://www.dreammaker.cc/
