# Extend a Touch Display

LattePanda officially released 7" touch display and 10" IPS high resolution display for LattePanda 1st gen product line. 
We are also working with several parnters to deliver customized displays for commercial market, which are not available for the retail, like 3.97", 8", 11.6" and so on.

* [Forum Topic about 3.97" display](https://www.lattepanda.com/topic-f16t10958.html)

## Tips 
When tinkering hardware, reviewing your hardware connection is always the most important step before powering on the whole system!

![img](http://www.lattepanda.com/wp-content/uploads/2016/08/bitmap.png)

!!! warning
    Please connect it with LattePanda BEFORE power-on. And make sure the Golden Finger face the right side. The contacts on FPC are so compact and in order. Please be careful that any dislocation connection may cause the LattePanda short circuit and the IPS display abnormal like ghosting or flicker.**

## Steps for connecting official 7" touch panel and MIPI display

* Lift up the actuator. Use thumb or index finger might be easier.

    ![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0100.jpg)

* Insert display FPC in.

!!! warning
    Place Golden Finger side down!**

![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0102.jpg)

!!! note
    The FPC must be fully inserted in the connector. If not fully inserted, the actuator will not close properly. Should this be the case, lift up the actuator and repeat the process (starting with Step 1 above)***

* Rotate down the actuator until firmly closed.

   ![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0103.jpg)

* Insert the FPC of touch panel in
   Same as the display. Place the Golden Finger side down too.

   ![img](http://www.lattepanda.com/wp-content/uploads/2016/05/6W4A0104.jpg)


## How to extend 3rd party displays available from market

There're several important tips you need to know when trying to extend a 3rd party MIPI display
1. Check the hardware pin mapping of the MIPI-DSI and I2C touch interface of LattePanda via [official pinout diagram](/content/1st_edition/hardware_introduction/)
2. To enable a display or touch panel, driver development or bios development could be necessary in most of cases. You'd better to have a development expert in your team before trying to do so. Or you can connect with LattePanda business team via [email](lattepanda@outlook.com) to apply for a display development request from LattePanda to support display you chosen. 
3. All HDMI displays and USB touch solutions are 100% compatible with LattePanda 1st gen, if vendors provide support for Windows 10.

## Enjoy smooth touch interaction and efficient data visualization for your projects