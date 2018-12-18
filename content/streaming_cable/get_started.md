# Streaming Cable

Run your LattePanda as a ‘virtual machine’ on any computer but faster, easier and more stable to operate. The Streaming Cable is the first virtual network cable to **support RNDIS and 5G bandwidth**, much faster than a gigabyte NIC and compatible with any Remote control protocol like NX, RDP, and VNC. Please follow the instruction below to set up your first physical ‘virtual machine’.



# Quick Start

## Hardware Requirement

You will need to prepare the following devices before use

1. **Host**: A **LattePanda** or other computer that needs to be connected and controlled, running Windows or MacOS

2. **Client:** A computer, runs Windows, MacOS or Ubuntu, **such as your MacBook**

3. A streaming Cable

   ​

## Recommended Software Solutions

Please **choose the same one for your Host and Client** according to the Host's OS and your needs

- **Microsoft Remote Desktop (RDP):** Support for Hosts with Windows 10 Pro or above OS (such as LattePanda Alpha or Delta), you can use Microsoft's standard RDP protocol for quickly configuration, seamless copy and paste, and get a full virtual machine experience


- **NoMachine:** Supports all Windows, MacOS or Ubuntu, NoMachine will unleash the performance potential of the streaming cable. You can **coding, watch videos or even play games** in your Client just like you would on a local device
- **Steam:** To get the best gaming experience on your client, we recommend using [Steam In-Home Streaming](https://store.steampowered.com/streaming/), 1080P, low latency, allow offline mode, support for all Windows and Mac OS




## Configuration 

If you are a first time user, please follow the introduction below to set up.

### Set Up Your Host

This section will show you how to install drivers and Apps in your Host.

**Which System Does The Host Run?** 

1. **[Windows]()**
2. **[MacOS]()**

Click on the OS to jump to the corresponding section.



# Set Up Windows Host

#### Connect Hardware

* Connect monitor, keyboard and mouse to the Host, power on the Host and the Client

- Connect the Host to the Client with the streaming cable(Both need USB3.0 interface)

  *(**Note:** For **MacOS Client**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

#### Install Drivers  

1. Click to Download Package here [StreamingCableHost](/assets/StreamingCable/StreamingCableHost.zip), and unzip it to any convenient location such as `C:\Program`, then you will find the following folder & file:

- **dhcpsrv**
- **SetupEnv**

2. Right-click **SetupEnv** and select **Run as administrator**. After running, it will close automatically.

```
!!! info
This script used to enable remote desktop server and set the IP address of Streaming Cable to static IP 1.1.1.1 If your windows is an unlicensed version, it will disable limit blank password use to allow your remote access
```

3. Open **dhcpsrv** folder,  run **dhcpwiz.exe**, follow the guide below and set it up accordingly.

   ![dhcpserver](https://raw.githubusercontent.com/LattePandaTeam/Docs/master/assets/StreamingCable/dhcpserver_setup.jpeg)

#### Install App *(Please choose according to the Host OS and your needs)*

1. Remote Desktop **Server** have pre-installed in Windows Pro and above OS, **does not support other OS**
2. [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download), run it after installation

```
!!! tip
If you don’t connect a display to the HDMI interface of the Host, it will disable the GPU acceleration and remote desktop will run slowly. Please insert a Headless HDMI adapter(Amazon: Headless HDMI) to the Host to make the GPU work properly
```

#### Finished

Next time you can power on the Host and access it directly



# Set Up MacOS Host

1. #### Connect Hardware

   - Connect monitor, keyboard and mouse to the Host, power on the Host and the Client


   - Connect the Host to the Client with the streaming cable(Both need USB3.0 interface)

     *(**Note:** **For MacOS Client**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

2. #### Install Drivers 

   - [Click to download & Install RNDIS driver](http://bit.ly/2A4f2xI), restart your Mac after installation. 

      *(Note: If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

   - Enter `System Preferences`->`Network panel`, you will see a device named **Remote NDIS compatible Device…**,  Please [click to view the guide](/assets/StreamingCable/macnetwork_setup.png) and set a static IP for it accordingly
   - Refer to the previous step and set a static IP address 1.1.1.2 for the “Remote NDIS compatible Device…”  in your Client.

3. #### Install App *(Please choose according to the Host OS and your needs)*

   - Remote Desktop **Server** have pre-installed in Windows Pro and above OS, **does not support other OS**

   - [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download), run it after installation

      *(If you don’t connect a display to the HDMI interface of the Host, it will disable the GPU acceleration and remote desktop will run slowly.  Please insert a [Headless HDMI adapter](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=headless+HDMI+adapter) to the Host to make the GPU work properly)*

4. ##### Finished, next time you can power on your Host and access directly

## Set up your Client

*(Note: Keep the Host connected to the Client with the streaming cable)*

1. #### Remote desktop

   - **For Windows Clinet**:  [click to view the guide](/assets/StreamingCable/Winrdp_setup.jpeg) and set up accordingly
   - **For MacOS Client**: Download and run Microsoft Remote Desktop,  then [click to view the guide](/assets/StreamingCable/macrdp_setup.jpeg) and set up accordingly
   - **For Ubuntu Client:** Download and run Remmina,  then [click to view the guide](/assets/StreamingCable/Ubunturdp_setup.png) and set up accordingly

2. #### **NoMachine**

   Click to download and run [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download),  then [click to view the guide](/assets/StreamingCable/NoMachine_setup.jpeg) and set up accordingly. 

3. #### **Now, you are in, next time, you can click and run, enjoy it!**




## FAQ

Q: **Unable to connect**

A: 

1. Make sure the Host is powered on and not in sleep mode, set the Host sleep mode to never sleep
2. Please check the Streaming Cable in the network adapter panel of both devices, If you can't find an RNDIS adapter, please reconnect the Streaming Cable and try again.
3. For Windows client, please check the Configure IPV4 of the RNDIS adapter in the Client network adapter property panel, If it is not DHCP, please Change to Using DHCP.
4. You will need to re-setup the Host if you use a new Streaming Cable or new Host 


Q: **Why is my remote desktop running so slowly?**

A:

1. Please make sure you connect Streaming Cable to USB3.0 interface
2. Please check the bandwidth of streaming cable in the network adapter panel, If the bandwidth is not 5G, please reconnect the Streaming Cable and try again.
3. If you are using Microsoft Remote Desktop, you can try NoMachine.
4. If you are using NoMachine and don’t connect a display to the HDMI interface of the Host,  it will disable the GPU acceleration  and remote desktop will slow down,  please insert a [Headless HDMI adapter](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=headless+HDMI+adapter) to the Host Device to make the GPU work properly.

​