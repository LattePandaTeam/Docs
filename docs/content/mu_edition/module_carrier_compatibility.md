To help you select and verify the right hardware combination, the compatibility between different carrier boards and compute modules is summarized below.

|                                               | LattePanda Mu (N100/N305) | LattePanda Mu Ultra (226V/256V) |
| --------------------------------------------- | ------------------------- | ------------------------------- |
| **DFR1293 Mini Carrier Board**                | 🟢                         | 🟢                               |
| **DFR1142 Lite Carrier Board (V1/V2)**        | 🟢                         | 🟡                               |
| **DFR1141 Full Eval Carrier Board**           | 🟢                         | 🔴                               |
| **KIT0206/KIT0207 MXM GPU Carrier Board Kit** | 🟢                         | 🟡                               |

!!! Note "Mark Pattern"

    - 🟢 **Fully Compatible**: All ports function properly, though transfer speeds or specs may vary.
    - 🟡 **Partially Compatible**: The compute module will boot and work, but some carrier board ports may not work or are unavailable.
    - 🔴 **Incompatible**: Do not insert the compute module and power on, as this will cause hardware damage!


- ⚠️ Pay special attention to combinations marked in 🔴Incompatible. Using this carrier board with the specified compute module is strictly prohibited, as it will cause hardware damage.

- For combinations marked in 🟡Partially Compatible, please refer to the **Compatibility List** section in the respective carrier board tutorial for detailed support information.