
# Set Up Host on MacOS

This section will show you how to install drivers and Apps in your MacOS Host.

## Connect Hardware
1. Connect monitor, keyboard and mouse to the Host, power on the Host and the Client
2. Connect the Host to the Client with the streaming cable(Both need USB3.0 interface)

!!! Note
     **For MacOS Client**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

## Install Drivers 

* [Click to download & install RNDIS driver](http://bit.ly/2A4f2xI), restart your Mac after installation. 

!!! Tip
    If the system warns of a security problem, please enter System Preferences-> Security & Privacy panel and Click Open Anyway

* Enter `System Preferences`->`Network panel`, you will see a device named **Remote NDIS compatible Device…**,  follow the guide below and set it up accordingly.

<center> ![dhcpserver](/assets/streaming_cable_resources/mac_network_setup.png)</center>

* Refer to the previous step and set a static IP address 1.1.1.2 for the “Remote NDIS compatible Device…”  in your Client, if you change the Client device, you need to set its IP also.

## Install NoMachine 

Remote Desktop does not support other OS except windows pro and above, NoMachine is a great choice for MacOS running on the host LattePanda (Hackintosh) kind devices.

* Click to download [NoMachine](https://www.nomachine.com/download), run it after installation.

!!! tip
    If you don’t connect a display to the HDMI interface of the Host, it will disable the GPU acceleration and remote desktop will run slowly. Please insert a Headless HDMI adapter(Amazon: Headless HDMI) to the Host to make the GPU work properly.

## Host Configuration Completed

Next time you can power on the Host and access it directly

## Set Up The Client

If you are following the guide above, you should have installed NoMachine in the Host

Please [click to know how to set up NoMachine in the Client](/content/streaming_cable/set_up_nomachine_client)
