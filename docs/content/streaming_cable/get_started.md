# Streaming Cable Tutorial

Run your LattePanda as a ‘virtual machine’ on any computer but faster, easier and more stable to operate. The Streaming Cable is the first virtual network cable to **support RNDIS and 5G bandwidth**, much faster than a gigabyte NIC and compatible with any Remote control protocol like NX, RDP, and VNC. Please follow the instruction below to set up your first physical ‘virtual machine’.

## Hardware Requirement

You will need to prepare the following devices before use

1. **Server Computer:** A **LattePanda** or other computer that needs to be connected and controlled, running Windows or MacOS
2. **Client Computer:** A computer, runs Windows, MacOS or Ubuntu, **such as your MacBook**
3. **streaming Cable:** Connect the Server Computer to the Client Computer(Both need USB3.0 interface)

## Quick Start
### Install driver and setup environment
Connect Streaming Cable, then refer to the different OS setup requirements below to configure server and client computer separately.

1. **Unlicensed Windows:** Click to download [SetupEnv_NM.bat](../../assets/streaming_cable_resources/SetupEnv_NM.bat)，Right-click and select Run as administrator, after running, it will close automatically
2. **MacOS:** [Click to download RNDIS driver](http://bit.ly/2A4f2xI) Driver and install
3. **Linux:** add a new "USB Ethernet" in Settings->Ethernet panel, set its IPV4 to Link-Local Only

### Install NoMachine

1. Click to download [NoMachine(Windows, MacOS and Ubuntu)](https://www.nomachine.com/download) and install it in the server and client computer separately.

### How to use

1. Connect Streaming Cable, Run NoMachine on Server and Client Computer (Start automatically as OS boot up)
2. Wait for a few minutes, the Server Computer will appear in the Client Computer NoMachine Browse Connections page, double-click to run
3. **You are in, enjoy!** ([Click to get detailed tutorials and the best display quality](set_up_nomachine_client.md))

**More software solutions and tutorials** will be introduced in the following sections.


## More recommended Software Solutions

These sections below will show you more recommended Software Solutions, please choose one for your Server Computer and Client Computer according to your needs. This tutorial contains installation guides for Microsoft Remote Desktop and NoMachine. You can setup other software solutions accordingly.

* **Microsoft Remote Desktop (RDP):** Support for Server Computers with Windows 10 Pro or above OS (such as LattePanda Alpha or Delta), you can use Microsoft's standard RDP protocol for quickly configuration, seamless copy and paste, and get a full virtual machine experience

* **NoMachine:** Supports all Windows, MacOS or Linux, NoMachine will unleash the performance potential of the streaming cable. You can **code, watch videos or even play games** in your Client Computer just like you would on a local device

* **Steam:** To get the best gaming experience on your Client Computer, we recommend using [Steam In-Home Streaming](https://store.steampowered.com/streaming/), 1080P HD, low latency, allow offline mode, support for all Windows and Mac OS

### Difference Between Solutions Above

    RDP Solution
        Server Computer - Windows Only
        Client Computer - Windows / MacOS / Ubuntu

    NoMachine
        Server Computer - Windows / MacOS / Linux
        Client Computer - Windows / MacOS / Linux

    LattePanda Delta / Alpha
        Works with RDP solution and NoMachine both
    
    LattePanda 2G / 4G - first generation series
        NoMachine is recommended
        Or you need to install Windows Pro on it to enable RDP feature


!!! Example
    I have a LattePanda running Windows and Macbook Pro is my main desktop development computer.
    Then RDP solution will be recommended.

    But if you installed MacOS on LattePanda Alpha and you use MacBook Pro, then NoMachine will the only option for you!


### Configuration

If this is the first time for you to use LattePanda Streaming Cable, the **complete process** for configuration includes:

1. Choose one Software Solution
2. Setup software on Server Computer (Must be finished before Step 3)
3. Setup software on Client Computer
4. Enjoy seamless experience with dual devices

### Let's start!

This section will show you how to install drivers and Apps in your Server Computer. Click on the OS to jump to the corresponding section.

**So What's OS running on the Server Computer (LattePanda)?**

1. [Windows - RDP](set_up_windows_host.md)
2. **MacOS - NoMachine:** Refer to the Quick Start section
