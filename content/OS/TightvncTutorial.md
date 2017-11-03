# Introduction

Using a VNC server will enable you to access the GUI of Windows running on your LattePanda from a different PC on your local network. TightVNC is a free and easy to set up service.

VNC stands for “Virtual Network Computing”. It is a way of transmitting the keyboard and mouse events of one computer to another - in other words using one computer to remote control another. This is useful because you might not have extra monitors, keyboards or mice lying around – using a VNC service enables you to access several computers on your local network using just one computer, monitor, keyboard and mouse. You might also have a headless server set up which doesn’t require constantly attached peripherals. Setting up a VNC server on your headless server is a handy way to interface with a GUI if and when you need it. 

Let’s get started:

### Step 1 - Installation

1. Download and install TightVNC for Windows on your LattePanda. Choose 32-bit or 64-bit depending on your system architecture.
   (LattePanda Standard is 32-bit, LattePanda Enhanced is 64-bit)
   [Download](http://www.tightvnc.com/download.php)
   ![vnc_image001](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image001.png)

2. End-User Licence Agreement
   Accept the licence agreement and click next
   ![vnc_image002](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image002.png)

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

   ![vnc_image009](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image009.png)

   Open TightVNC Viewer. A window will appear for a new TightVNC Connection. At this point, you need to input the IP address of your LattePanda.

   ![vnc_image010](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image010.png)

   Tip: A quick way of finding this is if you hover over the system tray TightVNC icon on your LattePanda. A hint will pop up with “TightVNC Service - 

   ” You could also go in to your router control interface and look for attached devices. The next step is to input this IP address in the New TightVNC Connection Window, followed by the port number you set in the service settings. The default is port 5900.
   `<ip address of LattePanda>:<port number>`
   `e.g. 192.168.2.60:5900` Click connect. If all goes well you will be prompted with a password input. Input the password you set earlier. My password was “lattepan”. Press enter.


![vnc_image011](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image011.png)

You will be greeted by a window containing your LattePanda’s GUI! You may now control it remotely!
![vnc_image012](http://www.lattepanda.com/wp-content/uploads/2016/02/vnc_image012.png)
This concludes the LattePanda VNC tutorial. If you have any questions or comments please let us know in the forum. I hope this has been of help to you.