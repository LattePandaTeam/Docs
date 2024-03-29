# Powering On

LattePanda is a powerful and versatile single-board computer that can be used for a wide range of application scenario.

To power your LattePanda Sigma, you have several options depending on your specific needs and preferences. In this guide, we will explore the different ways that you can power your LattePanda Sigma and provide you with the necessary information and steps to get started.


## 3 Ways to Power Your LattePanda in Different Application Scenarios

!!! Warning
    1.In these 3 ways, the acceptable power input range is 12V to 20V. Please ensure the voltage does not exceed 20V. <br>2.Please use the power adapter with at least 90W or more, otherwise the LattePanda Sigma may suddenly shut down when the processor is under high load. 


* Provided DC power adapter via 5.5mm x 2.5mm DC Jack 

* USB Type C PD adapter

* JST PH2.0-8Pin connector

![](https://dfimg.dfrobot.com/nobody/wiki/ec75152bb85c4baa93bf423ad10838bd.png)

### Power Supply Priority

   The PD adapter and DC adapter can be connected at the same time. LattePanda prioritizes using the connector with the higher voltage for its power supply.

   The prority is that: <br>USB Type C(Rear) > USB Type C(Front) > DC Jack = PH2.0-8Pin connector. <br>The power supply with high priority will be used first.

## Powered by 5.5mm x 2.5mm DC Jack

**Input Specifications**

* <font color=FF8000>12-20V(No higher than 20V)</font>

* 90 watts or above is recommended

![](https://dfimg.dfrobot.com/nobody/wiki/d9072c1e2c7d35cbcdc23dab815a0c7c.png)

LattePanda Sigma has a DC 5.5mm x 2.5mm circular power jack onboard, and a 19V 90W power adapter is attached. 

It is strongly recommended to use the attached power adapter to ensure the stability and safety of power supply.

## Powered by USB Type C PD adapter

!!! note
    The 65W PD adapter is not enough to power the LattePanda Sigma, and LattePanda Sigma may suddenly shut down when the processor is under high load. So please use the power adapter with at least 90W or more.

**Input Specifications**

* 20V
* 90 watts or above is recommended

LattePanda Sigma has two Type C interfaces, one at the front and one at the rear. Both of which support PD adapters to power the board.

If both Type C ports are plugged into the PD adapters, the power supply of the rear Type C port will be used first.


## Powered by JST PH2.0-8Pin Input Connector

!!! warning
    Please make sure the positive and negative pins are properly connected and double-check your connections before turning on your LattePanda.

**Input Specifications**

* <font color=FF8000>12-20V(No higher than 20V)</font>

* 90 watts or above is recommended

![](https://dfimg.dfrobot.com/nobody/wiki/9d7853871bbe5df9b9519fbcd5d6ae50.png)

When the LattePanda is placed inside a device, you can use this connector to power it through the internal wiring of the device.

The middle four pins are the positive. The pin mapping is marked on the bottom with '+' and '-’, which means four negative pins and four positive pins.

The pins of the JST PH2.0-8Pin connector are directly connected to the pins of the DC Jack, which means that when the DC Jack is connected to a power source, the power from the DC Jack can be output via the JST PH2.0 connector.

