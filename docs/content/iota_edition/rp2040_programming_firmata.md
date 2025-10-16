# RP2040 Programming - Firmata


This method allows you to control the RP2040's GPIO pins directly from a Python script running on your LattePanda Iota. It provides a "Firmata-like" capability for real-time control.

There are some third-party Firmata solutions that support RP2040. In this chapter,  we uses the [telemetrix-rpi-pico library](https://github.com/MrYsLab/telemetrix-rpi-pico) as an example.  This solution consists of two parts:

- Server Firmware: A pre-compiled `.uf2` file that runs on the RP2040 to listen for commands.
- Client Library: A Python library installed on your OS to send commands.
  

This approach is ideal for building interactive applications, creating GUI-based controls, or for rapid prototyping without needing to re-flash the RP2040 for every logic change.


## Preparation

This section covers installing the server firmware onto the RP2040 and the client library on your OS.

- Download the [Server Firmware](https://github.com/MrYsLab/Telemetrix4RpiPico/raw/master/cmake-build-release/Telemetrix4RpiPico.uf2)

- Install the Server Firmware on RP2040

> Refer to the [Uploading new Firmware to RP2040](rp2040_programming.md#upload-instructions) section, copy the downloaded `Telemetrix4PriPico.uf2` file to the RP2040's drive.

- Download and install [Python](https://www.python.org/downloads/)

- Install the client library
> Windows:
```
pip install telemetrix-rpi-pico
```
> Linux/macOS:
```
sudo pip3 install telemetrix-rpi-pico
```

## Run the Script

Now let's run a Python script to control the RP2040's LED(pin 25).

- Download the [blink.py](https://github.com/MrYsLab/telemetrix-rpi-pico/blob/master/examples/blink.py)

- Run the blink.py script
```python
python blink.py
```
- The script will automatically find and connect to the RP2040, let the blue LED on the Iota board begin to flash.

## Language Reference

[telemetrix-rpi-pico library](https://github.com/MrYsLab/telemetrix-rpi-pico)

[Telemetrix User's Guide For Raspberry Pi Pico](https://mryslab.github.io/telemetrix-rpi-pico/)


---

[**:simple-discord: Join our Discord**](https://discord.gg/k6YPYQgmHt){ .md-button .md-button--primary }