
# Set Up Windows Host

This section will show you how to install drivers and Apps in your windows Host.

## Connect Hardware

1. Connect monitor, keyboard and mouse to the Host, power on the Host and the Client
2. Connect the Host to the Client with the streaming cable(Both need USB3.0 interface)

!!! note
    For **MacOS Client**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)

## Install Drivers  

* Click to Download Package here [StreamingCableHost](/assets/streaming_cable_resources/StreamingCableHost.zip), and unzip it to any convenient location such as `C:\Program`, then you will find the following folder & file:
    1. dhcpsrv
    2. SetupEnv

* Right-click **SetupEnv** and select **Run as administrator**. After running, it will close automatically.

!!! Note
        This script used to enable remote desktop server and set the IP address of Streaming Cable to static IP 1.1.1.1 If your windows is an unlicensed version, it will disable limit blank password use to allow your remote access.

* Open **dhcpsrv** folder,  run **dhcpwiz.exe**, follow the guide below and set it up accordingly.

<center>![DHCP Serve Configuration on Host](/assets/streaming_cable_resources/dhcp_server_setup.jpeg)</center>


## Install App 

Please **choose the same one for your Host and Client** according to the Host's OS and your needs

* **Remote Desktop** have pre-installed in Windows Pro and above OS, **does not support other OS** 

* **NoMachine**, [Click to download](https://www.nomachine.com/download), run it after installation

!!! tip
    If you don’t connect a display to the HDMI interface of the Host, it will disable the GPU acceleration and remote desktop will run slowly. Please insert a Headless HDMI adapter(Amazon: Headless HDMI) to the Host to make the GPU work properly

## Host Configuration Completed

Next time you can power on the Host and access it directly

## Set Up The Client

This section will show you how to install software and setup your Client.

**Click on the guide you need to jump to the corresponding section.** Please **choose the same sofrware** as the Host

1. [Run Remote Desktop Client on Windows](/content/streaming_cable/set_up_win_rdp_client)
2. [Run Remote Desktop Client on MacOS](/content/streaming_cable/set_up_mac_rdp_client)
3. [Run Remote Desktop Client on Ubuntu](/content/streaming_cable/set_up_ubu_rdp_client)
4. [NoMachine](/content/streaming_cable/set_up_nomachine_client)

:) Last step for building a smooth development environment!