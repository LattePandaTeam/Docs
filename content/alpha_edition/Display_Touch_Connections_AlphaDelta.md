# Display and Touch Connections - LattePanda Alpha and Delta

This document will review the different ways you can display the screen from your LattePanda. It will go over what you will need and the installation steps.

**Warning: When touching the LattePanda board, make sure to ground yourself before touching the board. Failure to ground yourself may cause static discharge into board components damaging your LattePanda.**

# HDMI

## What You Will Need
* HDMI cable
* TV or monitor with HDMI port

## Installation Steps
1. Connect a HDMI cable to LattePanda HDMI port.
2. Connect the other end of the HDMI cable to the TV or monitor.
![hdmi](https://github.com/chrislattepanda/Docs/blob/master/assets/images/Connect_HDMI.gif)
# DP / DVI / VGA

## What You Will Need
**Note: In order to power the LattePanda Alpha/Delta with the USB Type C port while using a USB Type C adapter, the adapter must have Power Delivery pass through.**
* USB Type C to DVI / VGA / DP adapter or hub
* Display cable (Depending on adapter type)

## Installation Steps
1. Connect the USB Type C adapter to the LattePanda Alpha/Delta USB Type C port.
2. Connect the display cable (DVI, VGA, DP) to the USB Type C adapter.
3. Connect the other end of the display cable to the TV or monitor.

# Embedded DisplayPort (eDP)
**Note: Using a 3rd party eDP display may not have driver support. In order to use a 3rd party display, it may require the development of a driver.**

## What You Will Need
* LattePanda Alpha/Delta eDP display

## Installation Steps
**Warning: Make sure the power to the LattePanda is disconnected before connecting the display. Make sure the cable is installed correctly before turning the power on. Failure to follow the instructions below may cause a short circuit and damage the LattePanda or display.**

1. Make sure the LattePanda is powered off and the power supply cable is disconnected.
2. Open the eDP latch on the LattePanda board.
3. Align the eDP cable with the LattePanda cable connector. Make sure the cable copper connection pads face the LattePanda connection pads.
4. Connect the eDP cable. 
5. Press down the latch to secure the cable.
![edp](https://github.com/chrislattepanda/Docs/blob/master/assets/images/Connect_eDP_Alpha.gif)

## Additional eDP Displays

While the LattePanda Alpha/Delta eDP display is officially supported, here are some other displays community members have gotten working.
* [15.6" Samsung Display](http://www.lattepanda.com/topic-p25460.html)

# Touch Panel
## What You Will Need
* LattePanda Alpha/Delta eDP display

## Installation Steps

**Warning: Make sure the power to the LattePanda is disconnected before connecting the touch screen. Make sure the cable is installed correctly before turning the power on. Failure to follow the instructions below may cause a short circuit and damage the LattePanda or display.**

1. Make sure the LattePanda is powered off and the power supply cable is disconnected.
2. Open the touch panel latch on the LattePanda board.
3. Align the touch panel cable with the LattePanda touch panel connector. Make sure the cable copper connection pads face the LattePanda connection pads.
4. Connect the touch panel cable.
5. Press down the latch to secure the cable.

# Related Links 
* [Getting Started](Getting_Started_AlphaDelta.md)
* [Powering LattePanda Alpha/Delta](Powering_AlphaDelta.md)
