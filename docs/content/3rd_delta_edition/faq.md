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

!!! question "**Q1:** Why the LattePanda boot into the EFI shell upon powering on instead of the Windows or Linux OS?"
    **:bulb: :** Please update the BIOS firmware to the latest version. Detailed instructions on how to perform the update can be found in the [**BIOS Setup**](bios_update_BIOS_firmware.md) section. The latest version available is **`LP-BS-7-S70JR120-CN51G-E`**.

!!! question "**Q2:** I have set up the auto power-on feature in the BIOS of the LattePanda 3 Delta, but it becomes ineffective once the RTC battery runs out. Is there any way to ensure that the auto power-on feature is natively supported by the hardware regardless of the RTC battery's status?"
    **:bulb: :** Yes, there is a workaround provided by our community members. You can use the onboard Arduino pins to maintain the auto power-on functionality without being affected by the RTC battery's condition. For detailed instructions, please visit our forum: [**LattePanda Forum - Use the Onboard Arduino to enable LattePanda 3 Delta to auto power on**](https://www.lattepanda.com/forum/topic/335313).


If you have problem when using LattePanda 3 Delta, please feel free to open your issue via [**LattePanda Forum**](https://www.lattepanda.com/forum/) or join our [**Discord**](https://discord.com/invite/UHgtJbf978).

We would greatly appreciate your invaluable contributions to the refinement of the tutorials by submitting tutorial enhancements or updates to the [**docs repository**](https://github.com/LattePandaTeam/Docs). 

Appreciate for your great support! And enjoy tinkering!


[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }