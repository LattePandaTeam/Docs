# Powering On

This document describes different ways that you can power your LattePanda. It will cover the input specification, what you will need, and installation steps.


## Overview

**2 Ways to Power Your LattePanda in Different Application Scenarios:**

* Official USB Type C PD adapter that comes with the LattePanda 3 Delta - Recommended;

   or Other USB Type C PD adapter or power bank of the same specification
   
*  12-volt input from JST PH2.0-4Pin connector

## Powered by USB Type-C PD Adapter or Power Bank

### Output Specifications of Type-C Adapters or Power Bank

* Supports PD protocol
* Accepts Power Delivery compliant devices at 15V 3A or 12V 3A

### Recommended Power Banks

* <a href="https://www.amazon.com/ZMI-Pixelbook-Nintendo-External-Powerbank/dp/B072BD98CM/ref=sr_1_1?dchild=1&keywords=ZMI&qid=1600766468&sr=8-1">ZMI 20000mAh PD battery.</a>
* <a href="https://www.lattepanda.com/topic-f23t17787.html" target="_blank">More options recommended and tested</a> by ccs_hello (community member).
* Or any other brand of power bank that supports PD protocol and outputs at least 24W.

## Powered by JST PH2.0-4Pin Input Connector

!!! warning
    Please make sure the positive and negative pins are properly connected and double-check your connections before turning on your LattePanda.

​    The input voltage range of the JST PH2.0-4Pin connector is 11~15V. The recommended power source is 12V, at least 2A. The maximum required booting power is about 12V 1.5A when no extra devices are connected to LattePanda. 

​    The pin mapping is marked on the board: -- DC ++, which means two negative pins and two positive pins.

<center>![DC Input Port](/assets/images/DC_Input_Port_3Delta.jpg)</center>

### Input Specifications

* 11-15V(No higher than 15V)

* 24 watts or above is recommended 

* Recommended power source: 12V, at least 2A

  


## Related Links
* [Getting Started](/content/3rd_delta_edition/get_started.md)
* [Hardware Interface](/content/3rd_delta_edition/io_playability.md)

**Enjoy your new LattePanda!**

Want to play with IoT? Want to study programming? Want to control the physical world? [Check the list of tools recommended first!][4]

[4]: /content/3rd_delta_edition/ide.md
