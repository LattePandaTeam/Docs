# Display and Touch Connections

This document will review the different ways you can display the screen from your LattePanda. It will also go over what you will need and the installation steps.

!!! warning
    Make sure to ground yourself and get rid of the static electricity on your body before touching your LattePanda SBC board. Failing to ground yourself may cause static electricity discharge into the board components, damaging your LattePanda.

## Overview

### 4 Ways to Extend Your Display on the LattePanda Delta

1. HDMI - for standard desktop usage
2. Type C to HDMI / DP converter - for standard desktop usage
3. [Connect to a Macbook Pro or any other development PC via a Streaming Cable - **Designed for Developers**](/content/streaming_cable/get_started/)
4. eDP displays - **Designed for Embedded Applications**


## HDMI

### What You Will Need

* HDMI cable
* TV or monitor with HDMI port

### Installation Steps

1. Connect an HDMI cable to the LattePanda HDMI port.
2. Connect the other end of the HDMI cable to the TV or monitor.

  <center>![hdmi](/assets/images/Connect_HDMI_Alpha.gif)</center>

## DP / DVI / VGA

### What You Will Need

!!! note
    In order to power on the LattePanda Alpha/Delta with the USB Type C port while using a USB Type C adapter, the adapter must have current in the Power Delivery passing through.

* USB Type C to DVI / VGA / DP adapter or hub
* Display cable (Depending on the adapter type)

### Installation Steps

1. Connect the USB Type C adapter to the LattePanda Alpha/Delta USB Type C port.
2. Connect the display cable (DVI, VGA, DP) to the USB Type C adapter.
3. Connect the other end of the display cable to the TV or monitor.
4. Connect the USB Type C power supply to the USB Type C adapter.

## Embedded DisplayPort (eDP)

!!! note 
    Using a 3rd party eDP display may not have drivers supported by your computer. In order to use the 3rd party display, it may require the development of a new driver.

### What You Will Need

* [LattePanda Alpha/Delta eDP display](https://www.dfrobot.com/product-1853.html?search=edp)

### Installation Steps

!!! warning
    Make sure to connect the display before you turn on your LattePanda. Also make sure that the cable is installed correctly before turning the power on. Failure to follow these instructions below may cause a short-circuit and damage the LattePanda or display.

1. Make sure the LattePanda is powered off and that the power supply cable is disconnected.
2. Open the eDP latch on the LattePanda board.
3. Align the eDP cable with the LattePanda cable connector. Make sure the copper cable connection pads face the LattePanda connection pads.
4. Connect the eDP cable. 
5. Press down on the latch to secure the cable.

<center>![edp](/assets/images/Connect_eDP_Alpha.gif)</center>

### Additional eDP Displays from the LP Community

While the LattePanda Alpha/Delta eDP display is officially supported by our company, here we have some other displays that our community members have gotten working.

* [15.6" Samsung Display](http://www.lattepanda.com/topic-p25460.html)
* [17.3" Display no bios update needed](https://www.lattepanda.com/topic-f23t17107.html?start=11)

## Touch Panel

### What You Will Need

* [Official eDP display for LattePanda Alpha and Delta](https://www.dfrobot.com/product-1853.html?search=edp)

!!! warning
    The MIPI display designed for LattePanda 1st genernation is not compatible with the eDP display connector design on the Alpha and Delta. This compatibility issue is caused by different CPU architectures and positionings of components.

### Installation Steps

!!! warning
    Make sure to connect the display before you turn on your LattePanda. Also make sure that the cable is installed correctly before turning the power on. Failure to follow these instructions below may cause a short-circuit and damage the LattePanda or display.

1. Make sure the LattePanda is powered off and the power supply cable is disconnected.
2. Open the touch panel latch on the LattePanda board.
3. Align the touch panel cable with the LattePanda touch panel connector. Make sure the copper cable connection pads face the LattePanda connection pads.
4. Connect the touch panel cable.
5. Press down on the latch to secure the cable.

## Streaming Cable

Please check the docs for the streaming cable here: [Getting Started - Streaming Cable](/content/streaming_cable/get_started/)


## Related Links 

* [Getting Started with Your Alpha/Delta](/content/delta_edition/get_started/)
* [Powering on the LattePanda Alpha/Delta](/content/delta_edition/powering/)

