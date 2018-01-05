# Problems On DOCS?

If you have any problems when viewing our DOCS, feel free to contact us and discuss [through the forum](http://www.lattepanda.com/topic-f16t1713.html). We, together with our community members, are always ready to help you!

## How do I know LattePanda is on?

There is one LED under LattePanda. When LP is on, you should see the PWR LED light up continuous and bright.

## How do I re-install LattePanda Windows system?

A simple solution is useful for the **following situation**:

1. You can't startup your Windows system properly
2. Windows system crashes
3. You need to recover the default Windows system after installing Android or Linux.

**Device required**: 1 x USB flash Drive (at least 5GB for LattePanda Standard and 8GB for LattePanda Enhanced)

Please follow the steps below to re-install Windows 10 to its "out of the box" state.

1.Download your LattePanda's official Windows 10 image

![z8350 mark](http://www.lattepanda.com/wp-content/uploads/2017/02/8350-stick.png)
[x86 version for z8300 2GB+32GB](https://drive.google.com/file/d/0B5YJ8UIGswVqeXFsbnRnWi1xXzg/view)

[x64 version for z8300 4GB+64GB](https://drive.google.com/file/d/0B5YJ8UIGswVqSm5qWF91MG1NWnc/view)

[x86 version for CR110 z8350 2GB+32GB](https://drive.google.com/file/d/0BzUYTecbiooHdVhHbFVZak4xREk/view)

[x64 version for CR110 z8350 4GB+64GB/ **all CR200 z8350**](https://drive.google.com/file/d/0BzUYTecbiooHS2hfcmNmVlhaWjA/view)

2.Format your USB disk to FAT32 and change the drive name to "WINPE"

3.Unzip the image to root directory of your USB flash disk

4.Plug the USB disk in USB host

5.Power on the LattePanda

6.The system will install the image automatically. Just wait until the recovery is finished. **Please note:** Your USB disk must be formatted to FAT32 and labelled "WINPE" in order for this to work

7.Unplug the USB disk. Reboot and enjoy.

## How to install Windows Enterprise on LattePanda?

We announced the LattePanda 4G/64GB version with Windows Key. If you need to know how to install a Windows Enterprise system on LattePanda or want know how to activate Windows key on your board, **just check this simple [tutorial](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=1388) contributed by community member**.

## What Boot Method Does LattePanda Use?

1. LattePanda BIOS uses UEFI boot
2. As we use different Windows images for two LP versions, the BIOS's bit depth should match the image. So LattePanda 2G/32GB uses a 32bit UEFI boot and 4G/64GB uses a 64bit UEFI boot.

If you are trying to install a different OS such as Linux, we have had some luck using multiarch images. We are still experimenting with this. We recommend looking on the [forum](http://www.lattepanda.com/forum/viewtopic.php?f=5&t=275) for more information.

## Common Adapters and USB cable recommendations:

Good power supply can ensure stable work of lattePanda. If you can’t start it, experience automatic shutdown and other problems in the process of using lattePanda, please check your adapter and USB cable so that whether they reach the specified requirements.

We tested some common adapter and USB cable so that it is convenient for your selection. The results are shown in the table below.

### Recommend Adapter:

- **Model: **AUKEY PA-T9 (American Standard)

  **Test Results:** available

  **Peak current:**3.0A

- **link: **[Amazon](https://www.amazon.com/Charge-Charger-Galaxy-Qualcomm-Certified/dp/B018RR30TK/ref=sr_1_1?ie=UTF8&qid=1466745738&sr=8-1&keywords=AUKEY+PA-T9) **Model: **AUKEY PA-T9-DE (European Standard)

  **Test Results: **available

  **Peak current: **3.0A

- **link: **[Amazon](https://www.amazon.de/AUKEY-Ladeger%C3%A4t-Port-schwarz-schnell/dp/B01AHWOH54/ref=sr_1_1?ie=UTF8&qid=1469606331&sr=8-1&keywords=PA-T9) **Model:**NILLKIN 5V@2A USB Adapter

  **Test Results:**available

  **Peak current:**2.5A

- **link: **[DFRobot](http://www.dfrobot.com/index.php?route=product/product&product_id=933&search=lattepanda&description=true#.V1UDL2OxhVo), [Amazon](http://www.amazon.com/Adapter-Nillkin%C2%AEUS-Standard-Charger-Samsung/dp/B015SL0Y3I/ref=sr_1_1?ie=UTF8&qid=1465189045&sr=8-1&keywords=NILLKIN+5V+2A+USB) **Model: **APPLE ipad 10W usb power adapter

  **Test Results: **available

  **Peak current: **2.8A


- **link: **[Amazon](http://www.amazon.com/Apple-A1357-Power-Adapter-iPhone/dp/B008QYIMO8/ref=sr_1_1?ie=UTF8&qid=1465189264&sr=8-1&keywords=APPLE+10W++adapter) **Model: **JDB 5500

  **Test Results: **available

  **Peak current: **2.8A


- **link: **[Amazon](http://www.amazon.com/Charger-JDB-Charge-Adapter-Samsung/dp/B00R26VRHA/ref=sr_1_1?ie=UTF8&qid=1465189309&sr=8-1&keywords=JDB+5500) **Model: **HUAWEI HW-050200C3W

  **Test Results: **available

  **Peak current: **2.5A


- **link: **[Amazon](http://www.amazon.com/Huawei-Original-Travel-Charger-Micro/dp/B017M0LNYC/ref=sr_1_1?ie=UTF8&qid=1465189465&sr=8-1&keywords=HW-050200C3W) **Model: **HUAWEI HW-059200CHQ

  **Test Results: **unavailable

#### Recommend USB cable:

- **Model: **LattePanda Double Sided Micro USB Cable

  **Test Results: **available

  **Wire Diameter: **0.9mm

- **link: **[DFRobot](http://www.dfrobot.com/index.php?route=product/product&product_id=1430&search=lattepanda&description=true#.V1UEk2OxhVo) **Model: **REMAX RC-025T

  **Test Results: **available

  **Wire Diameter: **0.8mm

- **link: **[Amazon](http://www.amazon.com/REMAX-RC-025t-Charger-Charging-Smartphone/dp/B01CNG4UHW/ref=sr_1_1?ie=UTF8&qid=1465189542&sr=8-1&keywords=REMAX+RC-025T) **Model: **JDB 5500

  **Test Results: **available

  **Wire Diameter: **0.7mm

  **link: **[Amazon](http://www.amazon.com/Charger-JDB-Charge-Adapter-Samsung/dp/B00R26VRHA/ref=sr_1_1?ie=UTF8&qid=1465189309&sr=8-1&keywords=JDB+5500)

### Other

Specific to embedded and robot applications scenarios, lattepanda also provides two pairs of external power supply pin of 5v and Gnd, check pinout diagram to find the external power connector beside the MicroUSB connector.

## Common Problems & Solutions

###  Problems and solution:

1. LattePanda 2G version activated problem.[http://www.lattepanda.com/topic-f10t1271.html](1111)
2. LattePanda 2G version activated problem.[1111](http://www.lattepanda.com/topic-f10t1271.html)

