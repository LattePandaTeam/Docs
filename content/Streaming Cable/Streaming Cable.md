# Streaming Cable Tutorial

Run your LattePanda as a ‘virtual machine’ on any computer but faster, easier and more stable to operate. The Streaming Cable is the first virtual network cable to **support RNDIS and 5G bandwidth**, much faster than a gigabyte NIC and compatible with any Remote control protocol like NX, RDP, and VNC. Please follow the instruction below to set up your first physical ‘virtual machine’.



### You will need the following devices:

1. A computer that needs to be connected and controlled, running Windows or MacOS, **such as lattePanda, is called Host**
2. A computer, runs Windows, MacOS or Ubuntu, **such as your MacBook, is called Client**
3. A streaming Cable



### List of recommended software solutions 

*((Please **choose the same one for your Host and Client** according to the Host's OS and your needs))*

- **Microsoft Remote Desktop (RDP):** Support for Hosts with Windows 10 Pro or above OS (such as LattePanda Alpha or Delta), you can use Microsoft's standard RDP protocol for quickly configuration, seamless copy and paste, and get a full virtual machine experience.
- **NoMachine:** supports all Windows, MacOS or Ubuntu, NoMachine will unleash the performance potential of the streaming cable. You can **coding, watch videos or even play games** in your Client just like you would on a local device.



### If you are a first time user, please follow the introduction below to set up

#### Set up your Host

1. ##### Connect hardware

   - Connect monitor, keyboard and mouse to the Host, power on the Host and the Client

   - Connect the Host to the Client with the streaming cable(Both need USB3.0 interface)

     *(**Note:** **For MacOS Client**, please [click to download & install RNDIS driver](http://bit.ly/2A4f2xI) in the **Client** first, restart your Mac after installation. If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

2. ##### Install Drivers 

   - **For Windows Host**

     1. Click to Download Package here [StreamingCableHost](/assets/StreamingCable/StreamingCableHost.zip), and unzip it to any convenient location such as `C:\Program`, then you will find the following folder & file:
        - dhcpsrv
        - SetupEnv
     2. Right-click **SetupEnv** and select **Run as administrator**. After running, it will close automatically.

     *(**Note**: it will enable remote desktop server and set the IP address of Streaming Cable to static IP 1.1.1.1. If your windows is an unlicensed version, it will disable limit blank password use to allow your remote access)*

     3. Open **dhcpsrv** folder,  run **dhcpwiz.exe**, [click to view the guide](/assets/StreamingCable/dhcpserver_setup.jpeg) and then set it up accordingly.

   - **For MacOS Host**

     1.  [Click to download & Install RNDIS driver](http://bit.ly/2A4f2xI), restart your Mac after installation. 

        *(Note: If the system warns of a security problem, please enter `System Preferences`-> `Security & Privacy` panel and Click `Open Anyway`)*

     2.  Enter `System Preferences`->`Network panel`, you will see a device named **Remote NDIS compatible Device…**,  Please [click to view the guide](/assets/StreamingCable/macnetwork_setup.png) and set a static IP for it accordingly
     3.  Refer to the previous step and set a static IP address 1.1.1.2 for the “Remote NDIS compatible Device…”  in your Client.

3. ##### Install App *(please choose according to the Host OS and your needs)*

   - Remote Desktop **Server** have pre-installed in Windows Pro and above OS, **does not support other OS**

   - [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download), run it after installation

      *(If you don’t connect a display to the HDMI interface of the Host, it will disable the GPU acceleration and remote desktop will run slowly.  Please insert a [Headless HDMI adapter](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=headless+HDMI+adapter) to the Host to make the GPU work properly)*

4. ##### **Finished, next time you can power on your Host directly** 

### Set up your Client

*(Note: Keep the Host connected to the Client with the streaming cable)*

1. ##### Remote desktop

   - **For Windows Clinet**:  [click to view the guide](/assets/StreamingCable/Winrdp_setup.jpeg) and set up accordingly
   - **For MacOS Client**: Download and run Microsoft Remote Desktop,  then [click to view the guide](/assets/StreamingCable/macrdp_setup.jpeg) and set up accordingly
   - **For Ubuntu Client:** Download and run Remmina,  then [click to view the guide](/assets/StreamingCable/Ubunturdp_setup.png) and set up accordingly

2. **NoMachine**

   Click to download and run [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download),  then [click to view the guide](/assets/StreamingCable/NoMachine_setup.jpeg) and set up accordingly. 

3. **Now, you are in, next time, you can click and run, enjoy it!**



### FAQ:

Q: **Unable to connect**

A: 

1. Make sure the Host is powered on and not in sleep mode, set the Host sleep mode to never sleep
2. Please check the Streaming Cable in the network adapter panel of both devices, If you can't find an RNDIS adapter, please reconnect the Streaming Cable and try again.
3. For Windows client, please check the Configure IPV4 of the RNDIS adapter in the Client network adapter property panel, If it is not DHCP, please Change to Using DHCP.
4. You will need to re-setup the Host if you use a new Streaming Cable or new Host 


Q: **Why is my remote desktop running so slowly**

A:

1. Please make sure you connect Streaming Cable to USB3.0 interface
2. Please check the bandwidth of streaming cable in the network adapter panel, If the bandwidth is not 5G, please reconnect the Streaming Cable and try again.
3. If you are using Microsoft Remote Desktop, you can try NoMachine.
4. If you are using NoMachine and don’t connect a display to the HDMI interface of the Host,  it will disable the GPU acceleration  and remote desktop will slow down,  please insert a [Headless HDMI adapter](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=headless+HDMI+adapter) to the Host Device to make the GPU work properly.

​