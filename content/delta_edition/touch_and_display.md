# Display and Touch Connections

This document will review the different ways you can display the screen from your LattePanda. It will go over what you will need and the installation steps.

!!! warning
    When touching the LattePanda board, make sure to ground yourself before touching the board. Failure to ground yourself may cause static discharge into board components damaging your LattePanda.

## Overview

### 4 Ways for Extending Displays on LattePanda Delta

1. HDMI - Standard desktop usage
2. Type C to HDMI / DP converter - Standard desktop usage
3. [Connect to Macbook Pro or any other development PC via Streaming Cable - **Designed for Developer**](/content/streaming_cable/get_started/)
4. eDP displays - **Designed for embedded applications**

### 4K Capability
Max Resolution from different physical display output channels on Delta: 
1. HDMI	4096x2304 @24 Hz (1.4a)
2. DP	  4096x2304 @60 Hz (1.2)
3. eDP	4096x2304 @60 Hz (1.4)


## HDMI

### What You Will Need

* HDMI cable
* TV or monitor with HDMI port

### Installation Steps

1. Connect a HDMI cable to LattePanda HDMI port.
2. Connect the other end of the HDMI cable to the TV or monitor.
  <center>![hdmi](/assets/images/Connect_HDMI_Alpha.gif)</center>

## DP / DVI / VGA

### What You Will Need

!!! note
    In order to power the LattePanda Alpha/Delta with the USB Type C port while using a USB Type C adapter, the adapter must have Power Delivery pass through.

* USB Type C to DVI / VGA / DP adapter or hub
* Display cable (Depending on adapter type)

### Installation Steps

1. Connect the USB Type C adapter to the LattePanda Alpha/Delta USB Type C port.
2. Connect the display cable (DVI, VGA, DP) to the USB Type C adapter.
3. Connect the other end of the display cable to the TV or monitor.
4. Connect the USB Type C power supply to the USB Type C adapter.

## Embedded DisplayPort (eDP)

!!! note 
    Using a 3rd party eDP display may not have driver support. In order to use a 3rd party display, it may require the development of a driver.

### What You Will Need

* [LattePanda Alpha/Delta eDP display](https://www.dfrobot.com/product-1853.html?search=edp)

### Installation Steps

!!! warning
    Make sure the power to the LattePanda is disconnected before connecting the display. Make sure the cable is installed correctly before turning the power on. Failure to follow the instructions below may cause a short circuit and damage the LattePanda or display.

1. Make sure the LattePanda is powered off and the power supply cable is disconnected.
2. Open the eDP latch on the LattePanda board.
3. Align the eDP cable with the LattePanda cable connector. Make sure the cable copper connection pads face the LattePanda connection pads.
4. Connect the eDP cable. 
5. Press down the latch to secure the cable.

<center>![edp](/assets/images/Connect_eDP_Alpha.gif)</center>

### Additional eDP Displays from Community

While the LattePanda Alpha/Delta eDP display is officially supported, here are some other displays community members have gotten working.

* [15.6" Samsung Display](http://www.lattepanda.com/topic-p25460.html)
* [17.3" Display no bios update needed](https://www.lattepanda.com/topic-f23t17107.html?start=11)

## Touch Panel

### What You Will Need

* [Official eDP display for LattePanda Alpha and Delta](https://www.dfrobot.com/product-1853.html?search=edp)

!!! warning
    MIPI display designed for LattePanda 1st genernation is not compatible with eDP display connector designed on Alpha and Delta. This compatibility issue is caused by different CPU architecture and positioning.

### Installation Steps

!!! warning
    Make sure the power to the LattePanda is disconnected before connecting the touch screen. Make sure the cable is installed correctly before turning the power on. Failure to follow the instructions below may cause a short circuit and damage the LattePanda or display.

1. Make sure the LattePanda is powered off and the power supply cable is disconnected.
2. Open the touch panel latch on the LattePanda board.
3. Align the touch panel cable with the LattePanda touch panel connector. Make sure the cable copper connection pads face the LattePanda connection pads.
4. Connect the touch panel cable.
5. Press down the latch to secure the cable.

## Streaming Cable

Please check the docs for streaming cable here: [Getting Started - Streaming Cable](/content/streaming_cable/get_started/)


## Related Links 

* [Getting Started with Alpha/Delta](/content/delta_edition/get_started/)
* [Powering LattePanda Alpha/Delta](/content/delta_edition/powering/)

