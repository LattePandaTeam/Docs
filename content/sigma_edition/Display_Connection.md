# Display Connection

This guide will demonstrate multiple ways to connect display devices to your LattePanda, and provide information on the necessary components and installation steps.

!!! warning
    Be sure to discharge any static electricity from your body before touching the LattePanda, as otherwise it may cause potential static discharge and damage the device. 

## 3 Ways to Extend Your Display on LattePanda Sigma

1. HDMI monitor: via HDMI port(HDMI 2.1, Up to 4096 x 2304 @ 60Hz) -- for standard desktop usage
2. USB Type C monitor or USB Type C to HDMI / DP Dock: via USB Type C port(DP 1.4a, Up to 7680 x 4320 @ 60Hz ) -- for standard desktop or mobile usage
3. eDP Screen: via eDP(eDP 1.4b, Up to 4096 x 2304 @ 120Hz) -- for embedded application scenarios

## HDMI

!!! Note
   The LattePanda Sigma supports HDMI 2.1, therefore, if you are using a display that supports 4K 60Hz HDR, it is recommended to use an HDMI 2.0b or 2.1 cable.

### What You Will Need

* HDMI Cable
* TV or Monitor with HDMI Port

### Installation Steps

1. Connect one end of the HDMI cable to the HDMI port on the LattePanda.
2. Connect the other end of the HDMI cable to the TV or monitor.

## USB Type C

**The USB Type C ports on LattePanda Sigma are both full function Thunderbolt 4. They both supports power, USB data, video and PCIe.** 

Thunderbolt 4 supports video output at up to 8K resolution or faster refresh rates, which is significantly higher than most other types of video outputs, and can help to reduce motion blur and provide a smoother and more responsive visual experience. 

Thunderbolt 4 also supports daisy-chaining multiple devices together. You can connect multiple displays to a single Thunderbolt 4 port, without needing to use additional video ports on LattePanda. 

Additionally, Thunderbolt 4 supports higher power delivery, which means you can charge your display devices while using the Thunderbolt 4 port for video output. 

!!! Note
   One Thunderbolt 4 supports up to 8K resolution and 60Hz refresh rate,  but only when connected to a single monitor and use a Thunderbolt 3/4 or USB 4 cable.

### What You Will Need

* USB Type C Display, or USB Type C / Thunderbolt Dock

* USB Type C Cable


### Installation Steps

* If your display device does not have a USB Type C port, you will need to use a USB Type C Dock. Follow these steps to connect your LattePanda to the display device:

	1. Locate the USB Type C port on your LattePanda(there are two USB Type C ports on LattePanda Sigma, both of which can be used).
	2. Connect the USB Type C HUB to the USB Type C port of your LattePanda. 
	3. Locate the display cable that you want to use (DP / DVI / VGA).
	4. Connect the display cable to the USB Type C HUB. 
	5. Connect the other end of the display cable to your TV or monitor. 

- If your display device has a USB Type C port, you can directly connect your LattePanda using a USB Type C cable. Follow these steps:
  1. Locate the USB Type C port on your LattePanda.
  2. Connect one end of the USB Type C cable to the USB Type C port of your LattePanda. Make sure it is securely plugged in.
  3. Connect the other end of the USB Type C cable to the USB Type C port of your display device. Make sure it is securely plugged in.


## eDP(Embedded DisplayPort)

The LattePanda Sigma uses a **0.5mm pitch 40-pin connector** for its eDP interface, which has 4 lanes and supports resolutions up to 4K and refresh rates up to 120Hz. This design allows for a power-efficient and high-bandwidth display connection while also enabling thinner and lighter device designs. 

### What You Will Need

* 40-Pin eDP display, 40-Pin to 40-Pin eDP Cable 

  or

* 30-Pin eDP display, 40-Pin to 30-Pin eDP Cable<br>

In most cases, any display devices which have a 40Pin eDP connector and is powered by 3.3V is compatible with LattePanda Sigma and don't require additional drivers. The eDP connector of LattePanda Sigma has four lanes.

### Installation Steps

!!! warning
    To avoid any potential damage to your LattePanda or display device, it's important to ensure that the eDP cable is correctly installed and the display is connected before turning on your LattePanda. Please double-check these connections carefully, as failure to do so may cause a short circuit.

- 1.Before starting, ensure that your LattePanda is powered off and disconnected from its power supply cable.

- 2.Align the eDP cable with the eDP connector on LattePanda. Make sure the gold finger of the eDP cable face up.

<center> ![](/assets/images/sigma/InsertEdpCable1.png)</center>

- 3.Gently insert the eDP cable into the connector. If the cable has the latch, press down on the latch to secure the cable in place.

<center> ![](/assets/images/sigma/InsertEdpCable2.png)</center>



### 40-Pin eDP Connector Pin Definition

When selecting a screen, please refer to the following pin definitions and voltage parameters.

<center> ![](/assets/images/sigma/EdpPinout.png)</center>

Voltage of the Power Pin:

* LCD_VCC: 3.3V

* BL_PWR:  9.6V

