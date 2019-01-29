
# Setup Server Computer - Remote Desktop

This section will show you how to install drivers and setup RDP in your windows Server Computer.

## Connect Hardware

1. Connect monitor, keyboard and mouse to the Server Computer, power on the Server Computer and the Client Computer
2. Connect the Server Computer to the Client Computer with the streaming cable(Both need USB3.0 interface)

!!! note
    For **MacOS Client Computer**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client Computer** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)

## Install Drivers  

* Click to Download Package here [StreamingCableHost](/assets/streaming_cable_resources/StreamingCableHost.zip), and unzip it to any convenient location such as `C:\Program`, then you will find the following folder & file:
    1. dhcpsrv
    2. SetupEnv

* Right-click **SetupEnv** and select **Run as administrator**. After running, it will close automatically.

!!! Note
        This script used to enable remote desktop server and set the IP address of Streaming Cable to static IP 1.1.1.1 If your windows is an unlicensed version, it will disable limit blank password use to allow your remote access.
        If the script is unable to detect the cable, please look in device manager, copy the name of the new device and amend this file to match 
        <center>echo "%%f"|find "Remote NDIS Compatible Device" >nul
        if !errorlevel!==0 (
        echo The operation completed successfully.
        goto :setIP</center>

* Open **dhcpsrv** folder,  run **dhcpwiz.exe**, follow the guide below and set it up accordingly.

<center>![DHCP Serve Configuration on Server Computer](/assets/streaming_cable_resources/dhcp_server_setup.jpeg)</center>


## Server Computer Configuration Completed

Next time you can power on the Server Computer and access it directly

## Set Up The Client Computer

This section will show you how to install RDP software and setup your Client Computer.
**Click on the guide you need to jump to the corresponding section.**

### Remote Desktop

1. [Client Computer with Windows](/content/streaming_cable/set_up_win_rdp_client)
2. [Client Computer on MacOS](/content/streaming_cable/set_up_mac_rdp_client)
3. [Client Computer on Ubuntu](/content/streaming_cable/set_up_ubu_rdp_client)

:) Last step for building a smooth development environment!
