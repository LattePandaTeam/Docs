
# NoMachine - Config Server Computer

This section will show you how to install drivers and Apps in your MacOS Server Computer.

## Connect Hardware
1. Connect monitor, keyboard and mouse to the Server Computer, power on the Server Computer and the Client Computer
2. Connect the Server Computer to the Client Computer with the streaming cable(Both need USB3.0 interface)

!!! Note
     **For MacOS Client Computer**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client Computer** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

## Install Drivers 

* [Click to download & install RNDIS driver](http://bit.ly/2A4f2xI), restart your Mac after installation. 

!!! Tip
    If the system warns of a security problem, please enter System Preferences-> Security & Privacy panel and Click Open Anyway

* Enter `System Preferences`->`Network panel`, you will see a device named **Remote NDIS compatible Device…**,  follow the guide below and set it up accordingly.

<center> ![dhcpserver](/assets/streaming_cable_resources/mac_network_setup.png)</center>

* Refer to the previous step and set a static IP address 1.1.1.2 for the “Remote NDIS compatible Device…”  in your Client Computer, if you change the Client Computer, you need to set its IP also.

## Install NoMachine 

Remote Desktop does not support other OS except windows pro and above, NoMachine is a great choice for MacOS running on the Server Computer like LattePanda (Hackintosh) and other devices.

* Click to download [NoMachine](https://www.nomachine.com/download), run it after installation.

!!! tip
    If you don’t connect a display to the HDMI interface of the Server Computer, it will disable the GPU acceleration and remote desktop will run slowly. Please insert a Headless HDMI adapter(Amazon: Headless HDMI) to the Server Computer to make the GPU work properly.

## Server Computer Configuration Completed

Next time you can power on the Server Computer and access it directly

## Set Up The Client Computer

If you are following the guide above, you should have installed NoMachine in the Server Computer

Please [click to know how to set up NoMachine in the Client Computer](/content/streaming_cable/set_up_nomachine_client)
