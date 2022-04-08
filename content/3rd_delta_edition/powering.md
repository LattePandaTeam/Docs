# Powering On

This document describes the different ways that you can power your LattePanda. It will list the input specification, what you will need, and installation steps.


## Overview

**2 Ways to Power Your LattePanda in Different Scenarios:**

* Official USB Type C PD adapter that comes with the LattePanda 3 Delta - Recommended；

   Other USB Type C PD adapter or power bank
*  12-volt input from JST PH2.0-4Pin connector

## USB Type-C PD Adapter or Power Bank

### Output Specification

* Supports PD protocol
* Accepts Power Delivery compliant devices at 15V 3A or 12V 3A

### Recommended Power Banks

* <a href="https://www.amazon.com/ZMI-Pixelbook-Nintendo-External-Powerbank/dp/B072BD98CM/ref=sr_1_1?dchild=1&keywords=ZMI&qid=1600766468&sr=8-1">ZMI 20000mAh PD battery.</a>
* <a href="https://www.lattepanda.com/topic-f23t17787.html" target="_blank">More options recommended and tested</a> by ccs_hello (community member).
* Or any other brand of power bank supporting PD protocol with the output of at least 24W

## JST PH2.0-4Pin Input Connector

!!! warning
    Please make sure to prevent any problems while powering on the LattePanda from incorrectly connecting the positive and negative pins!!! Please double-check your connections before powering on the LattePanda.

​    The voltage range of the JST PH2.0-4Pin connector is 11~15V. The recommended power source is 12V, at least 2A. The maximum required booting power is about 12V 1.5A when no extra devices are connected to the LattePanda. 

​    The pin mapping is marked on the board: -- DC ++, which means two negative pins and two positive pins.

<center>![DC Input Port](/assets/images/DC_Input_Port_3Delta.jpg)</center>

### Output Specifications

* 11-15V(do not higher than 15V)

* Above 24 watts is recommended 

* Recommended power source: 12V, at least 2A

  


## Related Links
* [Getting Started](/content/3rd_delta_edition/get_started.md)
* [Hardware Interface](/content/3rd_delta_edition/io_playability.md)

**Enjoy your new LattePanda!**

Want to play with IoT? Want to study programming? Want to control the physical world? [Check the list of tools recommended first!][4]

[4]: /content/3rd_delta_edition/ide.md
