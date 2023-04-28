# FAQ

| Q                          | A                                                            |
| -------------------------- | ------------------------------------------------------------ |
| Can not boot up            | 1. Check again that the power adapter is tightly connected, and the voltage is within the required range 12~15V.<br/>2. Try disconnecting the power adapter for a few seconds, then connect the power adapter. Turn on the  LattePanda again. |
| Blue LED doesn't tun off   | 1.Wait few minutes. May the OS is updating.<br>2. Confirm the auto power on function is disabled in the BIOS. |
| No screen output           | 1. Re-tight the display cable and wait few minutes until the system start completely.<br>2. If there is no screen when using a Type C screen, Please find an HDMI display to test. |
| Takes long time to booting | Confirm the voltage of RTC battery is enough. Low voltage or no battery will cause the operating system to take too long to boot. |
| Cooling fan doesn't start  | 1.The default setting is that the fan automatically starts when the temperature reaches the startup threshold.<br/>2. Check the BlOS Fan settings and change the cooling fan temperature setting. |
| Access BIOS setup          | Short press the power button and continuous pressing **DEL** key on the keyboard until you see the BlOS Setup Menu.<br>To select bootable device after pressing the power button, you can continuous pressing **F7** key. |
| Auto Power-on doesn't work | When the RTC battery runs down, Auto Power-on function will not work, so please ensure that the RTC battery is fully charged, or connect an external RTC battery with a larger capacity. |



**Q.** When LattePanda power on, it enters into the EFI shell,  not the windows or Linux OS. The OS is installed in the onboard eMMC chip.

**A.** Please update the BIOS firmware to the latest version.  Refer to ''Update the BIOS Firmware'' chapter in the [BIOS Setup](http://docs.lattepanda.com/content/3rd_delta_edition/bios/) section. The latest version is “LP-BS-7-S70JR120-CN51G-D”.

<br>

<br>

If you have problem when using LattePanda 3 Delta, please feel free to open your issue via [LattePanda forum](https://www.lattepanda.com/forum/).

And we will really appreciate if you can help to optimize the tutorials by **commiting tutorials or updates** to [docs repo](https://github.com/LattePandaTeam/Docs). Help users, who have same interests or meet problems like you do.

Appreciate for your great support! And enjoy tinkering! ;)

