# Powering On

This document describes the different ways you can power your LattePanda. It will cover the input specification, what you will need, and installation steps.

**4 Ways to powering your Alpha in different applications:**

1. Official PD adapter comes with LattePanda Alpha
2. External PD power bank
3. [12 volts input from JST PH2.0 - 4P connector][1]
4. [Lipo battery from 10p power connector][2]

**Discussion about powering on Forum:**

* [Forum Discussion - Suggest a on/off/reset button for Alpha][3]

[1]: /content/alpha_edition/io_playability/
[2]: https://www.lattepanda.com/topic-f13t16675.html
[3]: https://www.lattepanda.com/topic-f23t17507.html


## Type-C PD Adapters and Battery Banks

### Input Specification

* Accepts Power Delivery compliant devices with 45W output (Up to 36 watts will be good enough actually.)

### What You Will Need

* USB Type C Power Delivery power supply or battery

### Installation Steps

1. Connect the USB Type C power supply to the outlet.
2. Connect the USB Type C connector to the LattePanda Alpha USB Type C port or to an attached USB Type C hub with Power Delivery pass through.

### Recommended Batteries

* [Omars 20000 mAh batter](https://www.amazon.com/dp/B07CMLVR6C/ref=cm_sw_r_cp_api_i_R.njCbAT06DNT)
* Or any other power banks supporting PD protocol with up to 36 watts output

## DC Input Port
<center>![DC Input Port](/assets/images/DC_Input_Port_Alpha.jpg)</center>

### Input Specification
**To be updated later**
You can check the forum discussion about this topic via this [link][1].

## Lipo Battery Connector

<center>![10 Pin (10p) Battery Connector (Alpha Version Only)](/assets/images/Battery_Connector_Port_Alpha.jpg)</center>

!!! note 
    This connector is only available on the LattePanda Alpha. The LattePanda Delta does not have this connector.

### Recommended Batteries

We didn't offically release battery supported list from LattePanda yet. Somehow global battery shipping is not easy. And it's even hard to find a standard battery for global market when every place has different resources available. 
But You can check the forum discussion about this topic via this [link](https://www.lattepanda.com/topic-f13t16675.html?hilit=battery&start=31). Community members already find some alternatives from local battery vendors.

### Input Specification
* 7.4 - 8.2 V
* Recommend at least 5 Ah battery

### Drawing and Pin Diagram
<center>![10p Drawing](/assets/images/Battery_Connector_Drawing_Alpha.jpg)</center>

<center>![10p Diagram](/assets/images/Battery_Connector_Pin_Diagram_Alpha.jpg)</center>

### Installation Steps

1. Align the 10p battery connector with the LattePanda Alpha battery connector. Make sure the red wires align with pins 1-3 on the diagram above.
2. Connect the 10p battery connector to the LattePanda Alpha battery connector.


## Related Links
* [Getting Started](/content/alpha_edition/powering/)
* [Hardware Interface](/content/alpha_edition/io_playability/)

**Enjoy your new LattePanda!**

Want to play IoT? Want to study programming? Want to control the physical world? [Check tools recommended first!][4]

[4]: /content/alpha_edition/ide/