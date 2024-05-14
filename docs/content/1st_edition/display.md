# Extend a Touch Display

LattePanda officially released a [7" touch display](https://www.dfrobot.com/product-1413.html) and [10" IPS high-resolution display](https://www.dfrobot.com/product-1657.html) for the LattePanda 1st gen product line. 
We are also working with several partners to deliver customized displays for the commercial market, if you need it, kindly reach out to [**LattePanda Business Team**](mailto:lattepanda@outlook.com) for personalized consultation.

## Tips 
When tinkering with hardware, checking that your hardware is properly connected is always the most important step to powering on your system successfully!

![](../../assets/images/LP%20V1/touc_hdisplay/bitmap.webp)

!!! warning
    Please connect this device to the LattePanda BEFORE powering it on. Additionally, please make sure that the Golden Finger faces the right side. The contacts on the FPC (Flexible Printed Circuit) are very compact and in a specific order. Please be careful not to have any dislocation in the connection which may cause the LattePanda to short circuit and lead the IPS display to have abnormalities like ghost images or flickering.

## Steps for Connecting the Official 7" Touch Panel and MIPI Display

* Lift up the small locking flap which sits behind the insertion point of the FPC. (Please view [this youtube video](https://youtu.be/j7o6CBNUmt4?t=192) in the event that you do not know where the flap is located or how to properly lift it up.) You may find it easy enough to use your thumb or index finger for this step.

![](../../assets/images/LP%20V1/touc_hdisplay/6W4A0100.webp)

* Insert the display's FPC into the slot.

!!! warning
    Place the "golden finger" side down when inserting!

![](../../assets/images/LP%20V1/touc_hdisplay/6W4A0102.webp)

!!! note
    The FPC must be fully inserted into the connector port, otherwise the small locking flap will not close properly. Should this be the case, lift up the small locking flap and repeat the process (starting with Step 1 above).

* Rotate and push the small locking flap down until it is firmly closed.

![](../../assets/images/LP%20V1/touc_hdisplay/6W4A0103.webp)

* Insert the FPC of the touch panel in the
   same way as you installed the FPC for the display. Place the golden finger side down for this FPC, too.

![](../../assets/images/LP%20V1/touc_hdisplay/6W4A0104.webp)


## How to Extend 3rd Party Displays Available from the Market

There are several important tips you need to know when trying to install a 3rd party MIPI display extension

* Check the hardware pin map of the MIPI-DSI and I2C touch interface of the LattePanda via the [official pinout diagram](hardware_introduction.md)

* To enable a display or touch panel, a driver development or bios development might be necessary in most cases. It is advised to have a development expert in your team working with you on this operation before making this sort of attempt. You can also connect with the LattePanda Business Team via our [email](mailto:lattepanda@outlook.com) to apply for a display development request from LattePanda in order to provide support for the display you've chosen. 

* All HDMI displays and USB touch screen solutions are 100% compatible with the LattePanda 1st gen, as long as vendors' products provide support for Windows 10.

* Enjoy Seamless Touchscreen Interaction and Efficient Data Visualization for Your Projects
