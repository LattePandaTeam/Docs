# Powering On

This document introduces the different ways to power on your LattePanda. It will cover the input specifications, what you will need, and all of the installation steps.


## Overview

**4 Ways to Power On Your Alpha:**

1. Official PD adapter which comes with the LattePanda Alpha
2. External PD power bank
3. [12 volt input from JST PH2.0 - 4P connector][1]
4. [Lipo battery from 10p power connector][2]

**Forum Discussion Threads Regarding the Power Supply:**

* <a href="https://www.lattepanda.com/topic-f23t17507.html" target="_blank">Forum Discussion - Suggest an on/off/reset button for Alpha</a>

[1]: /content/alpha_edition/powering/#jst-4p-dc-input-connector
[2]: /content/alpha_edition/powering/#lipo-battery-connector

## Type-C PD Adapters and Battery Banks

### Input Power Specification

* Supports PD protocol
* Accepts devices with 45W output (15V3A).

### What You Will Need

* USB Type C Power Delivery power supply or battery

### Installation Steps

1. Connect the USB Type C power supply to the outlet.
2. Connect the USB Type C connector to the LattePanda Alpha USB Type C port or to an attached USB Type C hub with Power Delivery passing current through the device.

### Recommended Power Banks

* <a href="https://www.amazon.com/ZMI-Pixelbook-Nintendo-External-Powerbank/dp/B072BD98CM/ref=sr_1_1?dchild=1&keywords=ZMI&qid=1600766468&sr=8-1">ZMI 20000mAh PD battery.</a>
* <a href="https://www.lattepanda.com/topic-f23t17787.html" target="_blank">More options recommended and tested</a> by ccs_hello (community member).
* Or any other brand of power bank which supports PD protocol with up to 36 watts of output.

## JST 4p DC Input Connector

!!! warning
    Please make sure that the positive and negative pins are connected correctly! Double check the power connection before powering on the system. 

The voltage range of the Alpha power input connector is 11~15 volts. So if you're choosing the lipo battery, it should be 3~4 cells. The standard power source is 3A @ 12 volts. The booting power is about 10 watts and operating power is about 5 watts with a limited electrical load.

<center>![DC Input Port](/assets/images/DC_Input_Port_Alpha.jpg)</center>
### Input Specification

* 11-15 volts
* Up to 36 watts is recommended 
* Standard power - 3A @ 12 volts
* JST PH2.0 - 4p connector (pin mapping is marked on the board, as well: -- DC ++, which means two negative pins and two positive pins)

You can also check out this [more detailed pinout diagram][5].

[5]: /content/alpha_edition/io_playability/

## Lipo Battery Connector

!!! warning
    Please make sure that the 10 pin sequence of the Lipo battery is connected correctly. **Many vendors provide Lipo batteries with 10pin connectors. You may need to change the pins' sequence carefully based on the battery you purchased!**

    Any improperly connected power supply could damage your LattePanda Alpha!!!

<center>![10 Pin (10p) Battery Connector (Alpha Version Only)](/assets/images/Battery_Connector_Port_Alpha.jpg)</center>
### Recommended Batteries

We haven't officially released the list of batteries which are confirmed to work with the LattePanda Alpha yet.  It can be difficult to find and ship even standard batteries globally. 
But You can check the <a href="https://www.lattepanda.com/topic-f13t16675.html?hilit=battery&start=31" target="_blank">Here is a forum discussion regarding this topic.</a>. Community members have already found some alternatives from local battery vendors.

!!! tips
    This 10-pin Li-Po connector is meant to be a well-protected (BMS + balancer at minimum) battery pack, and is not intended for raw Li-Po/Li-Ion/LiFePO4 cells.   
    (e.g., the latter setup will drain energy until it is below the minimum Li-Po cell voltage required, which will significantly/irreversibly degrade the life expectancy of the cell.)
    Also, charging without the proper CI (then later CV) charging circuit is outright dangerous.
    <a href="https://www.lattepanda.com/topic-p26725.html" target="_blank">Check out the original post for more details.</a> This post was contributed by community member ccs_hello.

### Input Specification
* **7.4 - 8.2 V**, means 2-cell Lipo battery
* 5 Ah battery, where 5 Ah is the minimum recommended power rating
* Lipo battery must be able to charge at a CCCV rating of 1.9! Please check battery specification for charging current before using the battery. 
* Feel free to post a commit or suggestion via our<a href="https://github.com/LattePandaTeam/Docs" target="_blank">Github official repository</a>

### Drawing and Pin Diagram

Molex 10p Panelmate Connector
<center>![10p Drawing](/assets/images/Battery_Connector_Drawing_Alpha.jpg)</center>
<center>![10p Diagram](/assets/images/Battery_Connector_Pin_Diagram_Alpha.jpg)</center>
### Installation Steps

1. Align the 10p battery connector with the LattePanda Alpha battery connector. Make sure the positive red wires align with the pins 1-3 on the diagram above.
2. Connect the 10p battery connector to the LattePanda Alpha battery connector.

### Considerations When Using Battery Connector

When using only the 10p battery connector to power LattePanda Alpha, the red and blue initializing lights will not turn on. Hold the power button for 3 seconds and the LattePanda Alpha will boot.


!!! warning
    We only recommended this procedure for advanced makers who have accumulated a vast amount of experience working with hardware...

## Related Links
* [Getting Started](/content/alpha_edition/powering/)
* [Hardware Interface](/content/alpha_edition/io_playability/)

**Enjoy your new LattePanda!**

Want to play with IoT? Want to study programming? Want to control the physical world? [Check these recommended tools first!][4]

[4]: /content/alpha_edition/ide/
