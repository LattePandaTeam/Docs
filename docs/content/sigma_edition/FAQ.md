# FAQ

| Q                                             | A                                                            |
| --------------------------------------------- | ------------------------------------------------------------ |
| Can not boot up                               | 1. LattePanda Sigma does not have onboard storage devices like eMMC. Please ensure that the hard disks are installed.<br/>2. Check again that the power adapter is tightly connected, and the voltage is within the required range 12~20V.<br/>3. Try disconnecting the power adapter for a few seconds, then uninstall the RTC battery. Wait for at least 30 seconds, then reinstall the RTC battery and connect the power adapter. Turn on the  LattePanda again. |
| Suddenly shuts down or restarts while running | Ensure that the power adapter is not less than 90W. Otherwise, LattePanda Sigma may suddenly shut down or restart due to insufficient power supply. |
| Blue LED doesn't tun off                      | 1.Wait few minutes. May the OS is updating.<br>2. Confirm the auto power on function is disabled in the BIOS. |
| No screen output                              | 1. Re-tight the display cable and wait few minutes until the system start completely.<br>2. If there is no screen when using a Type C screen, Please find an HDMI display to test. |
| Takes long time to booting                    | Confirm the voltage of RTC battery is enough. Low voltage or no battery will cause the operating system to take too long to boot. |
| Cooling fan doesn't start                     | 1.The default setting is that the fan automatically starts when the temperature reaches the startup threshold.<br/>2. Check the BlOS Fan settings and change the cooling fan temperature setting. |
| Access BIOS setup                             | Short press the power button and continuous pressing **DEL** key on the keyboard until you see the BlOS Setup Menu.<br>To select bootable device after pressing the power button, you can continuous pressing **F7** key. |
| Auto Power-on doesn't work                    | When the RTC battery runs down, Auto Power-on function will not work, so please ensure that the RTC battery is fully charged, or connect an external RTC battery with a larger capacity. |
| SIM Card Not Recognized                       | 1. Check if the 4G/5G module is correctly installed and properly recognized in the system;<br/>2. Verify if the SIM card is inserted in the right direction;<br/>3. If it still cannot be recognized despite correct installation, please disconnect the power supply from the Sigma board, hard reboot once and check again. |


!!! question "**Q1:** Does LattePanda Sigma have plans to support 64GB RAM or more in the future?"
    **:bulb: :** The LattePanda Sigma is designed with only two memory pad locations. Currently, the maximum capacity for a single LPDDR5 memory chip is 16GB. Therefore, until there is a breakthrough in the maximum capacity supported by a single memory chip, the Sigma can only support up to 32GB RAM.


If you have problem when using LattePanda Sigma, please feel free to open your issue via [LattePanda forum](https://www.lattepanda.com/forum/).

And we will really appreciate if you can help to optimize the tutorials by **commiting tutorials or updates** to [docs repo](https://github.com/LattePandaTeam/Docs). Help users, who have same interests or meet problems like you do.

Appreciate for your great support! And enjoy tinkering! ;)

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }