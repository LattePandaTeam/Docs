# BIOS Setup


## Auto Power-on
To enable LattePanda to power on without the need to press the physical power button, kindly adjust the BIOS settings as follows:

**Path: BIOS Setup --> Advanced --> Power Management --> AcPowerLoss**
(Navigate to the location and set the **`AcPowerLoss`** option to **`Power On`**.)

![](../../assets/images/LattePanda 3 Delta/AcPowerLoss_3Delta.webp){width="600" }

Please note that the default setting is **`Power Off`**.

!!! Warning
    - When the **RTC battery's charge** is depleted, the Auto Power-On function will not work. Hence, it is crucial to ensure that the RTC battery is adequately charged to maintain its functionality. 
        - The LattePanda 3 Delta comes equipped with an onboard CR927 RTC battery, with a voltage of 3.0V, capable of maintaining power for  <span style="color: rgba(225, 103, 13);">**around 9~12 months**</span>.You could refer to [**External RTC Power Pin Chapter**](io_playability_Internal.md#external-rtc-power-pin) to connect an external large-capacity RTC battery.
        - Please disable the **Deep Sleep EUP Support** feature to ensure smooth operation of the Auto Power-On function.

If your project needs innate support for auto power-on function on LattePanda 3 Delta, impervious to the influence of RTC battery power and BIOS configurations, <span style="color: rgba(225, 103, 13);">kindly reach out to [**LattePanda Business Team**](mailto:lattepanda@outlook.com) for personalized consultation</span>. 


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }