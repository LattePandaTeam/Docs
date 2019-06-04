# Powering On

This document describes the different ways you can power your LattePanda. It will cover the input specification, what you will need, and installation steps.


## Overview

**4 Ways for powering your Delta in different applications:**

1. Official PD adapter comes with LattePanda Delta(Recommended)
2. External PD power bank
3. [12 volts input from JST PH2.0 - 4P connector][1]

[1]: /content/delta_edition/powering/#jst-4p-dc-input-connector
## Type-C PD Adapters and Power Banks

### Input Specification

* Accepts Power Delivery compliant devices with 45W output (Up to 36 watts will be good enough actually.)

### What You Will Need

* USB Type C Power Delivery Adapter or Power Bank

### Installation Steps

1. Connect the USB Type C adapter to the wall socket.
2. Connect the USB Type C connector to the LattePanda Delta USB Type C port.

### Recommended Power Banks

* <a href="https://www.amazon.com/dp/B07CMLVR6C/ref=cm_sw_r_cp_api_i_R.njCbAT06DNT" target="_blank">Omars 20000 mAh battery.</a>
* <a href="https://www.lattepanda.com/topic-f23t17787.html" target="_blank">More options recommended and tested</a> by ccs_hello (community member).
* Or any other brand power bank supporting PD protocol with up to 36 watts output

## JST 4p DC Input Connector

!!! warning
    Please make sure to protect the system powering from wrong power connections for positive and negative pins!!! And review your powering connection again and again before powering the system.

The voltage range of Delta power input connector is 7.4~15 volts. So if you're choosing the lipo battery, it should be 2~4 cells. The standard power source is 2A @ 12 volts. The maximum booting power is about 10 watts. And operation power is about 3 watts without much load(CPU usage < 5%).

<center>![DC Input Port](/assets/images/DC_Input_Port_Alpha.jpg)</center>

### Input Specification

* 7.4-15 volts
* Up to 24 watts is recommended 
* Standard power - 2A @ 12 volts
* JST PH2.0 - 4p connector (pin mapping is marked on the board: -- DC ++, which means two negative pins and two positive pins)

You can check the [details about pinout diagram][5].

[5]: /content/delta_edition/io_playability/

## Related Links
* [Getting Started](/content/delta_edition/get_started/)
* [Hardware Interface](/content/delta_edition/io_playability/)

**Enjoy your new LattePanda!**

Want to play IoT? Want to study programming? Want to control the physical world? [Check tools recommended first!][4]

[4]: /content/delta_edition/ide/