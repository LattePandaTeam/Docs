# Display and Touch Connections

This document will show how to connect different display devices to your LattePanda. It will also list what you need and the installation steps.

!!! warning
    Be sure to remove the static electricity from your body before touching the LattePanda! Otherwise, this may cause potential static discharge and damage your LattePanda! 

## Overview

### 3 Ways to Extend Your Display on the LattePanda 3 Delta

1. HDMI Display- for standard desktop usage
2. USB Type C Display, or USB Type C to HDMI / DP Converter - for standard desktop or mobile usage
4. eDP Display - for embedded applications scenarios

## HDMI

!!! Note
    The LattePanda 3 Delta supports HDMI 2.0b, so if you use the display which supports 4K 60Hz or 4K HDR, please use the HDMI 2.0b cable.

### What You Will Need

* HDMI Cable
* TV or Monitor with HDMI Port

### Installation Steps

1. Connect the HDMI cable to the HDMI port of the LattePanda.
2. Connect the other end of the HDMI cable to the TV or monitor.



## USB Type C /DP / DVI / VGA

### What You Will Need

* USB Type C Display, or USB Type C to DP / DVI / VGA adapter or hub

* Display Cable

!!! Note
    The USB Type C adapter or hub must support external PD input to power and transfer data with the LattePanda by USB Type C port.

### Installation Steps

* If your display device doesn't have a USB Type C port, you need a USB Type C adapter. Please follow these steps:

	1. Connect the USB Type C adapter to the USB Type C port of LattePanda.
	2. Connect the display cable (DP / DVI / VGA ) to the USB Type C adapter.
	3. Connect the other end of the display cable to the TV or monitor.
	4. Connect the USB Type C PD adapter to the USB Type C adapter.

* Some displays have a USB Type C port supporting PD and USB. So just a USB Type C cable is enough. Please follow these steps:

	1. Connect the USB Type C cable to the USB Type C port of LattePanda.
	
	2. Connect the other end of the USB Type C cable to the display device.
	
	   
	


## eDP(Embedded DisplayPort)

!!! note 
     In most cases, the display device, which has a 30Pin eDP connector and is powered with 3.3V, is compatible. It doesn't require additional drivers. The eDP connector of LattePanda 3 Delta has two lanes.

### What You Will Need

* eDP touch display for LattePanda 3 Delta

### Installation Steps

!!! warning
    Make sure to connect the display before you turn on your LattePanda. Also, ensure that the eDP cable is installed correctly before turning on the power. Failure to follow these instructions below may cause a short-circuit and damage the LattePanda or display device.

1. Ensure the LattePanda is powered off and disconnected from the power supply cable.
2. Open the eDP latch on the bottom of the LattePanda.
3. Align the eDP cable with the eDP cable connector on LattePanda. Make sure the gold finger of the eDP cable faces the bottom of the LattePanda.
4. Insert the eDP cable, then press down the latch to secure the eDP cable.

<center>![edp](/assets/images/Connect_eDP_Alpha.gif)</center>

### Additional eDP Displays from the LP Community

While the LattePanda eDP display is officially supported by our company, here we have some other displays that our community members have gotten working on.

* [15.6" Samsung Display](http://www.lattepanda.com/topic-p25460.html)
* [17.3" Display no bios update needed](https://www.lattepanda.com/topic-f23t17107.html?start=11)

## Touch Panel

### What You Will Need

* eDP touch display for LattePanda 3 Delta

!!! warning
    The MIPI display designed for LattePanda 1st generation is not compatible with the eDP connector on LattePanda Alpha, Delta, and 3 Delta. 

### Installation Steps

!!! warning
    Make sure to connect the touch display before you turn on your LattePanda. Also, ensure that the eDP cable and touch cable is installed correctly before turning on the power. Failure to follow these instructions below may cause a short-circuit and damage the LattePanda or display device.

1. Ensure the LattePanda is powered off and disconnected from the power supply cable.
2. Insert and secure the eDP cable as described in the previous section.
3. Open the touch panel latch on the bottom of LattePanda.
4. Align the touch panel cable with the touch panel connector on LattePanda. Make sure the gold finger of the touch panel cable faces the bottom of the LattePanda.
5. Insert the touch panel cable, then press down the latch to secure the touch panel cable.



## Related Links 

* [Getting Started with Your LattePanda 3 Delta](/content/3rd_delta_edition/get_started.md)
* [Powering on LattePanda 3 Delta](/content/3rd_delta_edition/powering.md)

