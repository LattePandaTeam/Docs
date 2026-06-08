## UART

### Pinout Assignment

The LattePanda Mu compute module provides up to 4 UART ports.

The pin locations and corresponding system port mappings are detailed below:

| **Pin#(Edge Connector)** | Pin Name | Note |
| ------------------------ | -------- | ---- |
| 10                     | SIO_UART_TX | UART exposed from SuperIO; <br>Typically mapped as `COM1` in Windows or `/dev/ttyS0` in Linux |
| 12                      | SIO_UART_RX | As above |
| 139                      | SOC_UART0_TXD | UART0 exposed from PCH; <br/>Typically mapped as `COM2` in Windows or `/dev/ttyS4` in Linux |
| 137                      | SOC_UART0_RXD | As above |
| 143                      | SOC_UART1_TXD | UART1 exposed from PCH; <br/>Typically mapped as `COM3` in Windows or `/dev/ttyS5` in Linux |
| 141                      | SOC_UART1_RXD | As above |
| 138                      | SOC_UART2_TXD  | UART2 exposed from PCH; <br/>Typically mapped as `COM4` in Windows or `/dev/ttyS6` in Linux |
| 140                      | SOC_UART2_RXD  | As above |

### Logic Level

All the UART pins mentioned above use 3.3V levels. Do not apply voltages higher than 3.3V.

### BIOS Requirement

To ensure the port mapping matches the table above, the BIOS version must be `S70NC1R200-8G-A` or the 16G variant or the SATA variant (Build Date: 2025/12/19) or higher.

Older BIOS versions may cause duplicate serial port mappings or mappings that don't match the table above. If upgrading from an older BIOS version:

  - Windows: It is recommended to uninstall all COM devices in Device Manager and reboot the system to refresh the mapping.
  - Linux: A simple system reboot is sufficient.

### Programming with Python pyserial

#### Environment Setup

- Download the Python installation package; versions 3.10, 3.11, or 3.12 are recommended.

    >-  If you need to use Python to control UART, I2C and GPIO ports, please note that the winsdk dependencies required for I2C and GPIO do not support version 3.13 or higher. Therefore, versions 3.10, 3.11, or 3.12 are recommended.
    >-  This tutorial uses [version 3.11.9 Windows installer (64-bit)](https://www.python.org/downloads/release/python-3119/).

- Install dependencies

    ```bash
    pip install pyserial
    ```

#### UART Loopback

- Complete sample code for serial loopback(`uart_tx_rx.py`)

    ```python
    import serial
    import time
    
    # For LattePanda Mu(N100/N305) on Windows OS, use 'COM1', 'COM2', 'COM3' or 'COM4'
    DEVICE = 'COM1'    #SIO_UART
    BAUD_RATE = 9600
    
    def main():
        try:
            # Open serial port (8N1, No Flow Control by default in pyserial)
            ser = serial.Serial(
                port=DEVICE,
                baudrate=BAUD_RATE,
                bytesize=serial.EIGHTBITS,   # 8 data bits
                parity=serial.PARITY_NONE,   # No parity
                stopbits=serial.STOPBITS_ONE, # 1 stop bit
                timeout=1                   # Read timeout (seconds)
            )
    
            print(f"Serial port opened: {ser.name}")
    
            tx_data = f"Hello from Windows Python ({ser.name}, {ser.baudrate})\r\n".encode()    # TX: Send data
            ser.write(tx_data)
            print(f"Sent: {tx_data}")
    
            time.sleep(0.5)    # Wait 500ms for incoming data
    
            print("Waiting for data...")
            rx_data = ser.read(128)  #RX: Receive data, Read up to 128 bytes
    
            if rx_data:
                print(f"Received: {rx_data}")
            else:
                print("No data received")
    
        except Exception as e:
            print(f"Error: {e}")
    
        finally:
            if 'ser' in locals() and ser.is_open:
                ser.close()
                print("Serial port closed")
    
    if __name__ == "__main__":
        main()
    ```

- Short-circuit the TX and RX pins of the SIO_UART, then run the following command to view the looped-back data.

    ```bash
    python uart_tx_rx.py
    ```

### Programming with C# System.IO.Ports

#### <span id="csharp-env">Environment Setup</span>

We will use C# in Visual Studio as an example for illustration.

!!!note

    Since the Visual Studio consumes significant storage and computing resources, it is recommended to perform the following steps on your personal computer. Once compiled, the executable file could be transferred to and run in the LattePanda Mu's windows operating system.

- Download and install [Visual Studio](https://visualstudio.microsoft.com) (version 2022 or later is recommended). This guide uses Visual Studio 2026.

- Run the installer and configure the following options:
    - Select the `.NET desktop development` under the `Workloads` tab.
    
        ![](../../assets/images/mu_edition/csharp_step_workloads.webp){width="1000" }
        
    - Navigate to the `Individual components` tab and ensure `.NET 8.0 Runtime` (or higher) is selected.
    
        ![](../../assets/images/mu_edition/csharp_step_individual_components.webp){width="1000" }
    
- After installation, create a new project:
    - Choose `Console App (C#)` as the project type.
        ![](../../assets/images/mu_edition/csharp_step_project_type.webp){width="800" }
        
    - Select `.NET 8.0 (Long Term Support)` (or higher) as the framework.
        ![](../../assets/images/mu_edition/csharp_step_consoleapp_framework.webp){width="800" }

- Once the project is created, configure the project properties to ensure compatibility with your LattePanda Mu operating system:
  
    - Right-click the project name in the solution explorer and select `Properties`. 
    
    - Change the `Target OS` to `Windows` (this ensures proper binding to the underlying Windows serial port APIs).
    - Set the `Target OS version` to match the Windows version running on your LattePanda Mu (e.g., select `10.0.22621.0` for Windows 11 22H2 or later).
    
        ![](../../assets/images/mu_edition/csharp_step_project_properties.webp){width="1000" }
    
- Include the `System.IO.Ports` library in your project:

    - Right-click the project name in the solution explorer and select `Manage NuGet Packages...`.
    - In the Browse tab, search for `System.IO.Ports`.
    - Select and install the official package to add the dependency.
        ![](../../assets/images/mu_edition/csharp_step_systemioports.webp){width="800" }

#### UART Loopback

The following sample is used to test the COM1 loopback.

- Copy the following code into your project's `Program.cs` file.

  ```c#
  /*!
   * @file Program.cs
   * @hardware LattePanda Mu (Intel N100/N305)
   * @BIOS S70NC1R200-8G-A or later
   * @author LattePanda Team(https://www.lattepanda.com/)
   * @version V1.0
   * @date 2026-06
   * @license The MIT License (MIT)
   * @brief Serial loopback sample code. Short-circuit the TX and RX pins of the corresponding serial port before running this program.
   */
  
  using System;
  using System.IO.Ports;
  using System.Text;
  using System.Threading;
  
  class Program
  {
      const string COM_PORT  = "COM1";   // Windows COM port(COM1: SIO_UART)
  
      const int    BAUD_RATE = 9600;
  
      static void Main(string[] args)
      {
          // ----------------------------------------------------------------
          // Graceful exit support for double-click launched executables.
          // Without this, the console window disappears immediately after the program finishes, giving the user no time to read the output.
          // ManualResetEventSlim is a lightweight synchronisation primitive that blocks until Set() is called from the Ctrl+C handler.
          // ----------------------------------------------------------------
          var exitEvent = new ManualResetEventSlim(false);
          Console.CancelKeyPress += (sender, e) =>
          {
              e.Cancel = true;          // Prevent the process from terminating immediately
              exitEvent.Set();          // Signal the main thread to proceed with cleanup
          };
  
          // Declare outside try so the finally block can always reach it.
          SerialPort? ser = null;
  
          try
          {
              ser = new SerialPort(
                  portName : COM_PORT,
                  baudRate : BAUD_RATE,
                  parity   : Parity.None,   // No parity bit
                  dataBits : 8,             // 8 data bits per frame
                  stopBits : StopBits.One   // 1 stop bit
              );
  
              // Timeout values (ms) prevent indefinite blocking if the loopback wire is missing or the UART is unresponsive.
              ser.ReadTimeout  = 1000;  // Throw TimeoutException after 1s with no incoming data
              ser.WriteTimeout = 1000;  // Throw TimeoutException after 1s if TX buffer is full
  
              // Open the port — allocates the OS handle and configures the hardware UART.
              ser.Open();
              Console.WriteLine($"Serial port opened: {ser.PortName}");
  
              // ----------------------------------------------------------------
              // Transmit phase
              // Convert the string to a raw byte array before writing;
              // SerialPort.Write() operates on bytes, not characters.
              // ----------------------------------------------------------------
              string txString = $"Hello from C# {ser.PortName},{ser.BaudRate}\r\n";
              byte[] txData   = Encoding.ASCII.GetBytes(txString);
              ser.Write(txData, 0, txData.Length);  // offset=0, send all bytes
              Console.WriteLine($"Sent: {txString.TrimEnd()}");
  
              // Give the UART hardware time to echo the bytes back through the loopback wire before we attempt to read.
              Thread.Sleep(500);
  
              Console.WriteLine("Waiting for data...");
  
              // ----------------------------------------------------------------
              // Receive phase
              // Allocate a receive buffer large enough for the expected payload.
              // ser.Read() returns the actual number of bytes read, which may be less than the buffer size.
              // ----------------------------------------------------------------
              byte[] rxData    = new byte[128];
              int    bytesRead = 0;
  
              try
              {
                  // Blocking read — waits up to ReadTimeout ms for incoming data.
                  bytesRead = ser.Read(rxData, 0, rxData.Length);
              }
              catch (TimeoutException)
              {
                  // No data arrived within the timeout window. This is expected if the loopback wire is not connected.
                  bytesRead = 0;
              }
  
              if (bytesRead > 0)
              {
                  // Decode only the bytes actually received, not the whole buffer.
                  string rxString = Encoding.ASCII.GetString(rxData, 0, bytesRead);
                  Console.WriteLine($"Received: {rxString}");
              }
              else
              {
                  Console.WriteLine("No data received");
              }
          }
          catch (Exception ex)
          {
              // Catches port-not-found, access-denied, and other fatal errors.
              Console.WriteLine($"Error: {ex.Message}");
          }
          finally
          {
              // Always close the port to release the OS handle, even if an exception was thrown during the test.
              if (ser != null && ser.IsOpen)
              {
                  ser.Close();
                  Console.WriteLine("Serial port closed");
              }
          }
  
          // Keep the console window open until the user presses Ctrl+C.
          // This is particularly important when the exe is launched by double-clicking in Windows Explorer rather than from a terminal.
          Console.WriteLine("\nPress Ctrl+C to exit...");
          exitEvent.Wait();
      }
  }
  ```

  

- Short the TX and RX pins of the SIO_UART, then run the compiled executable; you will see the serial data loopback.


## I2C

### Pinout Assignment

The LattePanda Mu compute module provides up to 4 I2C ports.

The pin locations are detailed below:

| **Pin#(Edge Connector)** | Pin Name |
| ------------------------ | -------- |
| 154                   | I2C2_SCL |
| 156                    | I2C2_SDA |
| 150                    | I2C3_SCL |
| 152                    | I2C3_SDA |
| 146                     | I2C4_SCL |
| 148                     | I2C4_SDA |
| 142                    | I2C5_SCL |
| 144                     | I2C5_SDA |

!!!note

    If you are using the [DFR1141 Full Eval Carrier](https://www.dfrobot.com/product-2821.html), an I2C device(IT8851 chip) with address `0x40` is already present on the `I2C2` port. Therefore, avoid connecting any other I2C device with the same address to this port.

### Logic Level

All the I2C pins mentioned above are pulled up to 3.3 V via 2.2kΩ resistors inside the compute module. Do not apply voltages higher than 3.3V.

### BIOS Requirement

To ensure  the I2C ports can be controlled on Windows OS, the BIOS version must be `S70NC1R200-8G-B` or the 16G variant or the SATA variant (Build Date: 2026/06/03) or higher.

Older BIOS versions do not support this feature.

### Programming with Python winsdk

#### Environment Setup

- Intel serial IO controller drivers must be installed on the Windows OS.

    > It is recommended to install the [Chipset](https://github.com/LattePandaTeam/LattePanda-Mu/blob/main/Softwares/Drivers/Chipset_10.1.19376.8374.zip) driver and the [SerialIO](https://github.com/LattePandaTeam/LattePanda-Mu/blob/main/Softwares/Drivers/SerialIO_30.100.2229.4.zip) driver.

- Download the Python installation package; versions 3.10, 3.11, or 3.12 are recommended.

    >-  The winsdk dependencies required for I2C and GPIO do not support version 3.13 or higher. Therefore, versions 3.10, 3.11, or 3.12 are recommended.
    >-  This tutorial uses [version 3.11.9 Windows installer (64-bit)](https://www.python.org/downloads/release/python-3119/).

- Install dependencies

    ```bash
    pip install winsdk
    ```

#### I2C Bus Scanner

- Complete sample code for scanning I2C device addresses (`i2c_scan.py`)

    ```python
    import asyncio
    import inspect
    import platform
    import time
    from datetime import datetime
    
    # Define the target I2C bus and the address range to scan (standard 7-bit addresses)
    BUS = "I2C2"     # available I2C ports on LattePanda Mu N100/N305:I2C2,I2C3,I2C4,I2C5
    FIRST = 0x03
    LAST = 0x77
    
    
    def await_if_needed(x):
        """
        Helper function to synchronously execute WinRT async operations.
        Since WinRT APIs in Windows are asynchronous, this bridges them to a synchronous context.
        """
        if not inspect.isawaitable(x):
            return x
    
        async def _await_any(awaitable):
            return await awaitable
    
        return asyncio.run(_await_any(x))
    
    
    # Windows-only dependency check
    if platform.system().lower() != "windows":
        raise SystemExit("This script is for Windows only.")
    
    try:
        from winsdk.windows.devices.enumeration import DeviceInformation
        from winsdk.windows.devices.i2c import I2cBusSpeed, I2cConnectionSettings, I2cDevice, I2cSharingMode
    except ImportError:
        raise SystemExit("Missing dependency: winsdk (pip install winsdk)")
    
    try:
        from winsdk import Array
    except Exception:
        Array = None
    
    # Get the Advanced Query Syntax (AQS) selector string for the specified I2C bus name
    selector = I2cDevice.get_device_selector(BUS)
    
    # Query the system to find the physical I2C controller matching the selector
    if hasattr(DeviceInformation, "find_all_async_aqs_filter_and_additional_properties"):
        extra_props = Array(str, []) if Array is not None else []
        devices = await_if_needed(DeviceInformation.find_all_async_aqs_filter_and_additional_properties(selector, extra_props))
    else:
        try:
            extra_props = Array(str, []) if Array is not None else []
            devices = await_if_needed(DeviceInformation.find_all_async(selector, extra_props))
        except TypeError:
            devices = await_if_needed(DeviceInformation.find_all_async(selector))
    
    if len(devices) == 0:
        raise SystemExit("No WinRT I2C controller found.")
    
    # Use the hardware ID of the first matching I2C controller
    device_id = devices[0].id
    found = []
    first_error = None
    
    # Scan the address range
    for addr in range(FIRST, LAST + 1):
        try:
            # Configure I2C connection settings for the current address
            settings = I2cConnectionSettings(addr)
            settings.bus_speed = I2cBusSpeed.STANDARD_MODE
            settings.sharing_mode = I2cSharingMode.SHARED
    
            # Open a connection to the device on this address
            probe = await_if_needed(I2cDevice.from_id_async(device_id, settings))
            if probe is None:
                continue
    
            # Try to read 1 byte. If the device exists, it will ACK. 
            # If it doesn't, this will throw an exception.
            probe.read(bytearray(1))
            found.append(addr)
            probe.close()
        except Exception as ex:
            # Keep track of the first error to help debug connection/permission issues
            if first_error is None:
                first_error = ex
    
    # Output scan results
    if found:
        print(f"{datetime.now():%H:%M:%S} Found: " + ", ".join(f"0x{a:02X}" for a in found))
    elif first_error is None:
        print(f"{datetime.now():%H:%M:%S} No device found.")
    else:
        print(f"{datetime.now():%H:%M:%S} No device found. Probe error: {type(first_error).__name__} - {first_error}")
    
    # Keep the console window open to allow viewing the output
    try:
        while True:
            time.sleep(0.1)
    except KeyboardInterrupt:
        pass
    ```

- Connect the I2C device to the corresponding port, then run the following command to scan the addresses of I2C devices on that port.

    ```bash
    python i2c_scan.py
    ```

#### EEPROM Read and Write

- The following complete sample code (`eeprom_rw.py`) demonstrates reading and writing a single byte of data to the [AT24C256 EEPROM Module(DFR0117)](https://www.dfrobot.com/product-429.html).

  ```python
  import asyncio
  import inspect
  import platform
  import time
  
  # Available I2C ports on LattePanda Mu N100/N305: I2C2, I2C3, I2C4, I2C5
  BUS = "I2C2"
  
  # AT24C256 fixed I2C address (A0=A1=A2=GND)
  DEVICE_ADDRESS = 0x50
  
  # AT24C256 specs
  WRITE_CYCLE_MS = 0.01  # Wait time > internal write cycle(5ms)
  
  
  def await_if_needed(x):
      """Helper to run WinRT async APIs in a synchronous environment."""
      if not inspect.isawaitable(x):
          return x
  
      async def _run(awaitable):
          return await awaitable
  
      return asyncio.run(_run(x))
  
  
  if platform.system().lower() != "windows":
      raise SystemExit("This script is for Windows only.")
  
  try:
      from winsdk.windows.devices.enumeration import DeviceInformation
      from winsdk.windows.devices.i2c import (
          I2cBusSpeed,
          I2cConnectionSettings,
          I2cDevice,
          I2cSharingMode,
      )
  except ImportError:
      raise SystemExit("Missing dependency: winsdk  →  pip install winsdk")
  
  try:
      from winsdk import Array
      extra_props = Array(str, [])
  except Exception:
      extra_props = []
  
  # ---------- I2C controller initialisation ----------
  
  selector = I2cDevice.get_device_selector(BUS)
  try:
      devices = await_if_needed(DeviceInformation.find_all_async(selector, extra_props))
  except TypeError:
      devices = await_if_needed(DeviceInformation.find_all_async(selector))
  
  if len(devices) == 0:
      raise SystemExit(f"No WinRT I2C controller found on bus '{BUS}'.")
  
  device_id = devices[0].id
  
  settings = I2cConnectionSettings(DEVICE_ADDRESS)
  settings.bus_speed  = I2cBusSpeed.STANDARD_MODE
  settings.sharing_mode = I2cSharingMode.SHARED
  
  eeprom = await_if_needed(I2cDevice.from_id_async(device_id, settings))
  if eeprom is None:
      raise SystemExit(f"AT24C256 not found at address 0x{DEVICE_ADDRESS:02X} on {BUS}.")
  
  print(f"AT24C256 (32KB) connected on {BUS}, address 0x{DEVICE_ADDRESS:02X}")
  
  # ---------- Demo ----------
  
  try:
      # 1. Target configuration for Demo
      target_mem_addr = 0x0000  # We will write and read at EEPROM memory address 0x0000
      test_data = 0xA5          # The byte pattern we want to write
  
      print(f"\n--- AT24C256 R/W Demo ---")
      print(f"Target Memory Address: 0x{target_mem_addr:04X}")
      print(f"Data to Write        : 0x{test_data:02X}")
  
      # 2. Write Operation
      # AT24C256 uses a 2-byte (16-bit) memory address
      addr_hi = (target_mem_addr >> 8) & 0xFF
      addr_lo =  target_mem_addr       & 0xFF
      eeprom.write(bytes([addr_hi, addr_lo, test_data]))
      print("Write command sent. Waiting for internal write cycle...")
      time.sleep(WRITE_CYCLE_MS)  # wait for internal write cycle
  
      # 3. Read Operation
      # AT24C256 uses a 2-byte (16-bit) memory address
      read_buffer = bytearray(1)
      eeprom.write_read(bytes([addr_hi, addr_lo]), read_buffer)
      retrieved_data = read_buffer[0]
      print(f"Data Read Back       : 0x{retrieved_data:02X}")
  
      # 4. Verification
      if retrieved_data == test_data:
          print("\n[SUCCESS] Write and Read match perfectly!")
      else:
          print("\n[ERROR] Data mismatch! Verification failed.")
  
  except Exception as e:
      print(f"An error occurred during I2C operations: {e}")
  
  finally:
      if eeprom:
          eeprom.close()
          print("I2C connection closed.")
  ```


### Programming with C# Windows.Devices.I2c

#### Environment Setup

- Refer to [the C# environment setup of the UART chapter](#csharp-env).

#### I2C Bus Scanner

The following example is used to scan for device addresses on the I2C port.

- Copy the following code into your project's `Program.cs` file.


  ```c#
  /*!
   * @file Program.cs
   * @brief I2C bus scanner for LattePanda Mu using Windows.Devices.I2c (WinRT API).
   *        Probes each address in the valid 7-bit range and reports responding devices.
   * @Hardware LattePanda Mu (Intel N100/N305); I2C device
   * @BIOS S70NC1R200-8G-B or later
   * @author LattePanda Team(https://www.lattepanda.com/)
   * @version V1.0
   * @date 2026-06
   * @license The MIT License (MIT)
   */
  
  using Windows.Devices.Enumeration;
  using Windows.Devices.I2c;
  
  // available in I2C2, I2C3, I2C4, I2C5
  const string BusName = "I2C2";
  
  // Valid 7-bit I2C address range: 0x03–0x77.
  // Addresses 0x00–0x02 and 0x78–0x7F are reserved by the I2C specification and should never be probed to avoid unintended bus side-effects.
  const int FirstAddress = 0x03;
  const int LastAddress  = 0x77;
  
  // Windows.Devices.I2c requires Windows 10 version 1809 (build 17763) or later. Earlier builds lack the necessary WinRT I2C inbox driver support.
  Version minimumWindowsVersion = new(10, 0, 17763, 0);
  
  try
  {
      EnsureSupportedWindows(minimumWindowsVersion);
      await RunScanAsync();
  }
  catch (Exception ex)
  {
      Console.WriteLine($"Fatal error: {ex.GetType().Name} - {ex.Message}");
      // Use Enter-to-exit strategy here because Ctrl+C handler is not yet registered at the point this catch block may be reached (e.g., version check failure).
      WaitForExitIfInteractive();
      Environment.ExitCode = -1;
  }
  
  async Task RunScanAsync()
  {
      bool stopRequested = false;
  
      // Register Ctrl+C handler before starting any blocking work so the user can always abort cleanly. e.Cancel = true prevents the OS from killing the process immediately, 
      // giving us a chance to finish the current iteration gracefully.
      Console.CancelKeyPress += (_, e) =>
      {
          e.Cancel = true;
          stopRequested = true;
          Console.WriteLine("Ctrl+C detected, exiting...");
      };
  
      Console.WriteLine($"I2C scan started. preferredBus={BusName}, range=0x{FirstAddress:X2}-0x{LastAddress:X2}, mode=hardware.");
  
      // FindAllAsync with the device selector returned by GetDeviceSelector() queries the WinRT device enumeration layer for all I2C controllers that match the requested bus name.
      // Each controller (I2C2–I2C5) appears as a separate DeviceInformation entry.
      DeviceInformationCollection devices = await DeviceInformation.FindAllAsync(
          I2cDevice.GetDeviceSelector(BusName));
  
      if (devices.Count == 0)
      {
          Console.WriteLine("No WinRT I2C controller found. Check BIOS I2C enable/pin mux settings and WinRT I2C driver state.");
          WaitForExitIfInteractive();
          return;
      }
  
      // Use the first enumerated controller that matches BusName. In practice, GetDeviceSelector(BusName) returns at most one matching entry.
      string deviceId = devices[0].Id;
  
      var foundAddresses = new List<int>();
      Exception? firstError = null;  // Capture the first probe error for diagnostic output.
  
      for (int address = FirstAddress; address <= LastAddress; address++)
      {
          try
          {
              var settings = new I2cConnectionSettings(address)
              {
                  // StandardMode = 100 kHz. Use FastMode (400 kHz) only if all devices on the bus are confirmed to support it.
                  BusSpeed = I2cBusSpeed.StandardMode,
  
                  // Exclusive mode: the driver issues a real START+address+STOP on the bus and throws an exception when the address is NACKed.
                  // This is the correct mode for scanning — Shared mode may succeed even for non-existent addresses and produce false positives.
                  SharingMode = I2cSharingMode.Exclusive
              };
  
              // FromIdAsync opens a logical handle to the device at 'address'.
              // Returns null if the driver cannot satisfy the request for reasons other than a missing ACK (e.g., resource conflict).
              using I2cDevice? probe = await I2cDevice.FromIdAsync(deviceId, settings);
              if (probe is null)
              {
                  continue;
              }
  
              // Perform a 1-byte read to confirm the device responds with an ACK.
              // The content of the byte is irrelevant; we only care whether the transaction succeeds (ACK) or throws (NACK / bus error).
              byte[] readBuffer = new byte[1];
              probe.Read(readBuffer);
              foundAddresses.Add(address);
          }
          catch (Exception ex)
          {
              // A NACK or bus error means no device at this address — expected during a scan. 
              // Record only the first error to surface unexpected failures(e.g., bus locked up, driver fault) in the summary output.
              firstError ??= ex;
          }
      }
  
      // Report results with a timestamp for log readability.
      string timestamp = DateTime.Now.ToString("HH:mm:ss");
      if (foundAddresses.Count == 0)
      {
          if (firstError is null)
          {
              Console.WriteLine($"{timestamp} No device found.");
          }
          else
          {
              // firstError gives a hint when every probe failed abnormally rather than via a clean NACK (e.g., driver timeout, access denied).
              Console.WriteLine($"{timestamp} No device found. Probe error: {firstError.GetType().Name} - {firstError.Message}");
          }
      }
      else
      {
          string addresses = string.Join(", ", foundAddresses.Select(addr => $"0x{addr:X2}"));
          Console.WriteLine($"{timestamp} Found: {addresses}");
      }
  
      // Spin-wait until the user presses Ctrl+C.
      // 100ms sleep keeps CPU usage negligible while still feeling responsive.
      Console.WriteLine("Scan completed. Press Ctrl+C to exit.");
      while (!stopRequested)
      {
          Thread.Sleep(100);
      }
  }
  
  // Verify the host OS is Windows and meets the minimum build requirement before attempting any WinRT API calls, which would throw cryptic COMExceptions otherwise.
  void EnsureSupportedWindows(Version minimumVersion)
  {
      if (!OperatingSystem.IsWindows())
      {
          throw new PlatformNotSupportedException("This sample only supports Windows.");
      }
  
      Version currentVersion = Environment.OSVersion.Version;
      if (currentVersion < minimumVersion)
      {
          throw new PlatformNotSupportedException(
              $"Windows version {currentVersion} is lower than required {minimumVersion}.");
      }
  }
  
  // Prevent the console window from closing immediately when the program is launched by double-clicking the exe (non-redirected interactive session).
  // Skipped when stdout/stdin is redirected (CI pipelines, shell scripts) to avoid blocking automated runs waiting for input that never comes.
  void WaitForExitIfInteractive()
  {
      if (Console.IsInputRedirected || Console.IsOutputRedirected)
      {
          return;
      }
  
      Console.WriteLine("Press Enter to exit.");
      _ = Console.ReadLine();
  }
  ```


- Connect an I2C device to the corresponding I2C port, then run the compiled executable; you will see the address of the connected I2C device.

#### EEPROM Read and Write

The following example writes one byte to address `0x0000` of an [AT24C256 EEPROM Module(DFR0117)](https://www.dfrobot.com/product-429.html) and reads it back for verification.

- Copy the following code into your project's `Program.cs` file.


  ```c#
  /*!
   * @file Program.cs
   * @brief Single-byte EEPROM read/write demo via WinRT I2C API.
   * @target AT24C256 (256 Kbit / 32 KB, 16-bit memory address, I2C address 0x50–0x57)
   * @Hardware LattePanda Mu (Intel N100/N305); AT24C256 EEPROM Module(DFR0117)
   * @BIOS S70NC1R200-8G-B or later
   * @author LattePanda Team(https://www.lattepanda.com/)
   * @version V1.0
   * @date 2026-06
   * @license The MIT License (MIT)
   */
  
  using Windows.Devices.Enumeration;
  using Windows.Devices.I2c;
  
  // Available in I2C2, I2C3, I2C4, I2C5
  const string BusName = "I2C2";
  
  // AT24C256 base I2C address (A2=A1=A0=GND → 0x50).
  const int AT24CXXAddress = 0x50;
  
  // Ctrl+C handler — set a flag so the main loop exits cleanly.
  bool stopRequested = false;
  Console.CancelKeyPress += (_, e) =>
  {
      e.Cancel = true;        // Suppress default process termination; let the loop exit gracefully.
      stopRequested = true;
      Console.WriteLine("Ctrl+C detected, exiting...");
  };
  
  Console.WriteLine($"Single-byte EEPROM read/write started. bus={BusName}, addr=0x{AT24CXXAddress:X2}, mem=0x0000, mode=hardware.");
  
  // Discover WinRT I2C controllers registered on the requested bus.
  // FindAllAsync queries the PnP device tree; an empty result means the driver is absent or the bus is disabled in BIOS / ACPI tables.
  DeviceInformationCollection controllers =
      await DeviceInformation.FindAllAsync(I2cDevice.GetDeviceSelector(BusName));
  
  if (controllers.Count == 0)
  {
      Console.WriteLine(
          "No WinRT I2C controller found. " +
          "Check BIOS I2C enable/pin mux settings.");
      return;
  }
  
  
  // Open the target I2C device.
  // Exclusive mode is required for an EEPROM: it ensures the driver performs a real START + address + STOP on the bus, 
  // and prevents address conflicts with other handles that might accidentally open the same device simultaneously.
  var settings = new I2cConnectionSettings(AT24CXXAddress)
  {
      BusSpeed    = I2cBusSpeed.StandardMode,
      SharingMode = I2cSharingMode.Exclusive  // Must be Exclusive for a real EEPROM device.
  };
  
  I2cDevice? device = await I2cDevice.FromIdAsync(controllers[0].Id, settings);
  if (device is null)
  {
      // FromIdAsync returns null when the address is already opened in Exclusive mode by another process, 
      // or when the driver rejects the open request.
      Console.WriteLine($"WinRT I2C open failed. addr=0x{AT24CXXAddress:X2}");
      return;
  }
  
  // Main loop — write then read back one byte at memory address 0x0000.
  using (device)
  {
      try
      {
          byte dataToWrite = 0xA5; // Test pattern: write 0xA5 to verify read-back
          
          // Write one byte to address 0x0000, then wait for AT24C256 internal write cycle to complete 
          // (tWR max 5 ms; 10 ms gives safe margin)
          WriteOneByte(device, 0x0000, dataToWrite);
          await Task.Delay(10);
  
          byte readValue = ReadOneByte(device, 0x0000);
          string match = (readValue == dataToWrite) ? "OK" : "MISMATCH";
          Console.WriteLine($"{DateTime.Now:HH:mm:ss} Write=0x{dataToWrite:X2}, Read=0x{readValue:X2} [{match}]");
      }
      catch (Exception ex)
      {
          Console.WriteLine($"{DateTime.Now:HH:mm:ss} I2C transaction error: {ex.GetType().Name} - {ex.Message}");
      }
  }
  
  // Single read/write completed. Block here until user presses Ctrl+C.
  Console.WriteLine("Done. Press Ctrl+C to exit.");
  while (!stopRequested)
  {
      Thread.Sleep(100);
  }
  
  // ---------------------------------------------------------------------------
  // WriteOneByte — perform a random write to a 16-bit memory address.
  //
  // AT24C256 write frame (3 bytes total):
  //   [0] MSB of 15-bit memory address  (A14–A8)
  //   [1] LSB of memory address          (A7–A0)
  //   [2] Data byte
  //
  // The EEPROM latches the data into its internal page buffer and then starts
  // the self-timed write cycle (tWR). Do NOT issue another write before tWR expires.
  // ---------------------------------------------------------------------------
  static void WriteOneByte(I2cDevice device, ushort address, byte data)
  {
      byte[] writeBuffer =
      [
          (byte)(address >> 8),   // Memory address high byte
          (byte)(address & 0xFF), // Memory address low byte
          data                    // Data to write
      ];
      device.Write(writeBuffer);
  }
  
  // ---------------------------------------------------------------------------
  // ReadOneByte — perform a random read from a 16-bit memory address.
  //
  // This is a combined WriteRead (repeated-START) transaction:
  //   Write phase : send the 16-bit memory address (sets the internal address pointer).
  //   Read phase  : clock out 1 byte; EEPROM auto-increments the pointer after each byte.
  // ---------------------------------------------------------------------------
  static byte ReadOneByte(I2cDevice device, ushort address)
  {
      byte[] addressBuffer =
      [
          (byte)(address >> 8),   // Memory address high byte
          (byte)(address & 0xFF)  // Memory address low byte
      ];
      byte[] readBuffer = new byte[1];
  
      // WriteRead issues a repeated START between the write and read phases,
      // which is required by the AT24C256 random read protocol.
      device.WriteRead(addressBuffer, readBuffer);
  
      return readBuffer[0];
  }
  ```

- Connect the AT24C256 to the corresponding I2C port, then run the compiled executable; the write/read result will be printed along with a pass/fail indicator (`OK` / `MISMATCH`). 


## GPIO

### Pinout Assignment

The LattePanda Mu compute module currently provides up to 17 GPIO pins that can be configured as either inputs or outputs. You can execute scripts within the system to control these GPIOs to read signals from or send signals to peripheral devices.

The pin locations and their default functions are listed in the table below:

| **Pin#(Edge Connector)** | Pin Name                | Default Function |
| ------------------------ | ----------------------- | ---------------- |
| 126                      | GPP_F12                 | GPIO             |
| 124                      | GPP_F13                 | GPIO             |
| 122                      | GPP_F14                 | GPIO             |
| 120                      | GPP_F15                 | GPIO             |
| 118                      | GPP_F16                 | GPIO             |
| 119                      | GPP_E0                  | WWAN_PWR_EN      |
| 121                      | GPP_A12                 | CAM_PWR_EN       |
| 139                      | SOC_UART0_TXD / GPP_H11 | UART0_TXD        |
| 137                      | SOC_UART0_RXD / GPP_H10 | UART0_RXD        |
| 143                      | SOC_UART1_TXD / GPP_D18 | UART1_TXD        |
| 141                      | SOC_UART1_RXD / GPP_D17 | UART1_RXD        |
| 138                      | SOC_UART2_TXD / GPP_F2  | UART2_TXD        |
| 140                      | SOC_UART2_RXD / GPP_F1  | UART2_RXD        |
| 128                      | GPP_D0                  | WWAN_PWR_EN      |
| 130                      | GPP_D1                  | WWAN_RST         |
| 132                      | GPP_D2                  | IT8851_INT       |
| 134                      | GPP_D3                  | CAM_PWR_EN       |

### GPIO Features

- 3.3V I/O voltage levels

- Floating input or push-pull output

- Defaults to high-impedance state after OS boot or reboot

- Routed directly from the processor PCH

!!!warning

    Since these GPIOs originate directly from the processor's PCH, special care must be taken during use.<br>Overvoltage, overcurrent, and short circuits are strictly prohibited, as any damage to the pins is irreparable.

### BIOS Requirement

GPIO control in windows OS requires BIOS support. Please ensure that the BIOS version used by LattePanda Mu module is `S70NC1R200-8G-B` or the 16G variant or the SATA variant (Build Date: 2026/06/04) or higher.

Older BIOS versions do not support this feature.

### Switch Multiplexed Pins to GPIO Mode

`GPP_F12` to `GPP_F16` pins can be used directly as GPIOs without requiring any BIOS configuration. 

The remaining pins are not set to GPIO by default and must be switched to GPIO mode in the BIOS.

 **Switching Steps:**

- Power-on or restart LattePanda board, press ++del++ to enter the BIOS setup.

- Navigate to the `GPIO Configuration` option  via the following path: `Advanced -> GPIO Configuration`.

- Configure the required pins to GPIO mode.

    >For example: If you do not need to use UART2 but wish to use the UART2 TXD and RXD pins as GPIOs, select "GPIO" as shown in the figure below.

    ![](../../assets/images/mu_edition/sw_uart2_gpio.webp){width="600" }

- Navigate to the `Save & Exit page` and select  `Save Changes and Exit`option to save the BIOS settings and restart the LattePanda board.

### GPIO Address

The mapping between the physical pins and the pin numbers (used in the code) is shown in the table below.

| Pin Name                | **PIN Mapping Number** |
| ----------------------- | ---------------------- |
| GPP_A12                 | 0                      |
| GPP_E0                  | 1                      |
| GPP_D0                  | 2                      |
| GPP_D1                  | 3                      |
| GPP_D2                  | 4                      |
| GPP_D3                  | 5                      |
| GPP_F12                 | 6                      |
| GPP_F13                 | 7                      |
| GPP_F14                 | 8                      |
| GPP_F15                 | 9                      |
| GPP_F16                 | 10                     |
| SOC_UART0_RXD / GPP_H10 | 11                     |
| SOC_UART0_TXD / GPP_H11 | 12                     |
| SOC_UART1_RXD / GPP_D17 | 13                     |
| SOC_UART1_TXD / GPP_D18 | 14                     |
| SOC_UART2_RXD / GPP_F1  | 15                     |
| SOC_UART2_TXD / GPP_F2  | 16                     |

### Programming with Python winsdk

#### Environment Setup

- Intel serial IO controller drivers must be installed on the Windows OS.

    > It is recommended to install the [Chipset](https://github.com/LattePandaTeam/LattePanda-Mu/blob/main/Softwares/Drivers/Chipset_10.1.19376.8374.zip) driver and the [SerialIO](https://github.com/LattePandaTeam/LattePanda-Mu/blob/main/Softwares/Drivers/SerialIO_30.100.2229.4.zip) driver.

- Download the Python installation package; versions 3.10, 3.11, or 3.12 are recommended.

    >-  The winsdk dependencies required for I2C and GPIO do not support version 3.13 or higher. Therefore, versions 3.10, 3.11, or 3.12 are recommended.
    >-  This tutorial uses [version 3.11.9 Windows installer (64-bit)](https://www.python.org/downloads/release/python-3119/).

- Install dependencies

  ```bash
  pip install winsdk
  ```

#### GPIO Output

The following code sets the `GPP_F12` pin to output mode and toggles the output level signal every second.

- Save the following code as a Python file, for example, `gpio_toggle_demo.py`.

  ```python
  import platform
  import time
  from datetime import datetime
  
  # Define the target GPIO pin by its physical name (e.g., 'GPP_D0', 'GPP_F12', etc.)
  TARGET_PIN_NAME = "GPP_F12"
  INTERVAL_MS = 1000
  
  # Mapping table: Physical GPIO Pin Name to WinRT Mapping Number
  PIN_MAPPING = {
      "GPP_A12": 0,
      "GPP_E0": 1,
      "GPP_D0": 2,
      "GPP_D1": 3,
      "GPP_D2": 4,
      "GPP_D3": 5,
      "GPP_F12": 6,
      "GPP_F13": 7,
      "GPP_F14": 8,
      "GPP_F15": 9,
      "GPP_F16": 10,
      "GPP_H10": 11,    # SOC_UART0_RXD
      "GPP_H11": 12,    # SOC_UART0_TXD 
      "GPP_D17": 13,    # SOC_UART1_RXD
      "GPP_D18": 14,    # SOC_UART1_TXD
      "GPP_F1": 15,    # SOC_UART2_RXD
      "GPP_F2": 16,    # SOC_UART2_TXD
  }
  
  # Resolve the target pin name to its mapping number
  if TARGET_PIN_NAME not in PIN_MAPPING:
      raise SystemExit(f"Error: Pin name '{TARGET_PIN_NAME}' is not valid or supported.")
  PIN = PIN_MAPPING[TARGET_PIN_NAME]
  
  if platform.system().lower() != "windows":
      raise SystemExit("This script is for Windows only.")
  
  try:
      from winsdk.windows.devices.gpio import GpioController, GpioPinDriveMode, GpioPinValue
  except ImportError:
      raise SystemExit("Missing dependency: winsdk (pip install winsdk)")
  
  # Initialize GPIO Controller
  controller = GpioController.get_default()
  if controller is None:
      raise SystemExit("WinRT GPIO controller is unavailable.")
  
  # Open and configure the target pin
  pin = controller.open_pin(PIN)
  pin.set_drive_mode(GpioPinDriveMode.OUTPUT)
  low = GpioPinValue.LOW
  high = GpioPinValue.HIGH
  pin.write(low)
  state = low
  
  print(f"Successfully initialized {TARGET_PIN_NAME} (Mapped to Pin {PIN})")
  
  try:
      while True:
          # Toggle pin state
          state = high if state == low else low
          pin.write(state)
          text = "High" if state == high else "Low"
          print(f"{datetime.now():%H:%M:%S} {TARGET_PIN_NAME} -> {text}")
          time.sleep(INTERVAL_MS / 1000)
  except KeyboardInterrupt:
      pass
  finally:
    # ── Safe release sequence ─────────────────────────────────────────────────
      # Step 1: Drive pin LOW to discharge any residual state before releasing
      try:
          pin.write(low)
      except Exception:
          pass  # Ignore if pin is already in an error state
  
      # Step 2: Switch to INPUT (high-impedance) so the pin is no longer actively driven after release.
      if pin.is_change_drive_mode_supported(GpioPinDriveMode.INPUT):
          pin.set_drive_mode(GpioPinDriveMode.INPUT)
          print(f"{TARGET_PIN_NAME} released → INPUT (high-impedance)")
      else:
          print(
              f"Warning: {TARGET_PIN_NAME} does not support INPUT mode; "
              "closing pin handle directly."
          )
  
      # Step 3: Close the WinRT pin handle
      pin.close()
      print(f"{TARGET_PIN_NAME} handle closed.")
  ```


- Navigate to the directory containing the `gpio_toggle_demo.py` file and run the following command in the terminal. You will observe the `GPP_F12` pin outputting high and low signals at approximately 1-second intervals.

  ```bash
  python gpio_toggle_demo.py
  ```

#### GPIO Input

The following code sets the `GPP_F12` pin to input mode and read its level status every 0.5 seconds.

```python
import platform
import time
from datetime import datetime

# Define the target GPIO pin by its physical name(e.g., 'GPP_D0', 'GPP_F12', etc.)
TARGET_PIN_NAME = "GPP_F12"
INTERVAL_MS = 500

# Mapping table: Physical GPIO Pin Name to WinRT Mapping Number
PIN_MAPPING = {
    "GPP_A12": 0,
    "GPP_E0": 1,
    "GPP_D0": 2,
    "GPP_D1": 3,
    "GPP_D2": 4,
    "GPP_D3": 5,
    "GPP_F12": 6,
    "GPP_F13": 7,
    "GPP_F14": 8,
    "GPP_F15": 9,
    "GPP_F16": 10,
    "GPP_H10": 11,    # SOC_UART0_RXD
    "GPP_H11": 12,    # SOC_UART0_TXD 
    "GPP_D17": 13,    # SOC_UART1_RXD
    "GPP_D18": 14,    # SOC_UART1_TXD
    "GPP_F1": 15,     # SOC_UART2_RXD
    "GPP_F2": 16,     # SOC_UART2_TXD
}

INTERVAL_MS = 500

if platform.system().lower() != "windows":
    raise SystemExit("This script is for Windows only.")

try:
    from winsdk.windows.devices.gpio import GpioController, GpioPinDriveMode, GpioPinValue
except ImportError:
    raise SystemExit("Missing dependency: winsdk (pip install winsdk)")

if TARGET_PIN_NAME not in PIN_MAPPING:
    raise SystemExit(f"Invalid pin name: '{TARGET_PIN_NAME}'. Please choose a valid pin.")

PIN = PIN_MAPPING[TARGET_PIN_NAME]

controller = GpioController.get_default()
if controller is None:
    raise SystemExit("WinRT GPIO controller is unavailable.")

pin = controller.open_pin(PIN)
# Configure the pin as input to read external levels
pin.set_drive_mode(GpioPinDriveMode.INPUT)
high = GpioPinValue.HIGH

try:
    while True:
        # Read the current digital level of the pin
        value = pin.read()
        level = "High" if value == high else "Low"
        print(f"{datetime.now():%H:%M:%S} Pin {TARGET_PIN_NAME} = {level}")
        time.sleep(INTERVAL_MS / 1000)
except KeyboardInterrupt:
    pass
finally:
    # Release the pin resource on exit
    pin.close()
```

### Programming with C# Windows.Devices.Gpio

#### Environment Setup

- Refer to [the C# environment setup of the UART chapter](#csharp-env).

#### GPIO Output

The following code sets the `GPP_F12` pin to output mode and toggles the output level signal every second.

- Copy the following code into your project's `Program.cs` file.

  ```C#
  /*!
   * @file Program.cs
   * @brief GPIO toggle demo for LattePanda Mu using Windows.Devices.Gpio (WinRT API).
   * @Hardware LattePanda Mu (Intel N100/N305)
   * @BIOS S70NC1R200-8G-B or later
   * @author LattePanda Team(https://www.lattepanda.com/)
   * @version V1.0
   * @date 2026-06
   * @license The MIT License (MIT)
   */
  
  using Windows.Devices.Gpio;
  
  // LattePanda Mu(N100/N305): physical GPIO name to WinRT logical GPIO index mapping.
  var PinMapping = new Dictionary<string, int>()
  {
      { "GPP_A12",  0 },
      { "GPP_E0",   1 },
      { "GPP_D0",   2 },
      { "GPP_D1",   3 },
      { "GPP_D2",   4 },
      { "GPP_D3",   5 },
      { "GPP_F12",  6 },
      { "GPP_F13",  7 },
      { "GPP_F14",  8 },
      { "GPP_F15",  9 },
      { "GPP_F16", 10 },
      { "GPP_H10", 11 },   // SOC_UART0_RXD - avoid using as GPIO when UART is active.
      { "GPP_H11", 12 },   // SOC_UART0_TXD
      { "GPP_D17", 13 },   // SOC_UART1_RXD
      { "GPP_D18", 14 },   // SOC_UART1_TXD
      { "GPP_F1",  15 },   // SOC_UART2_RXD
      { "GPP_F2",  16 },   // SOC_UART2_TXD
  };
  
  // Select the target pin by name. Change "GPP_F12" to any key in PinMapping above.
  const string TargetPin = "GPP_F12";
  int PinNumber = PinMapping[TargetPin];
  
  // Toggle interval in milliseconds — the pin state flips once per period.
  const int IntervalMs = 1000;
  
  // Flag set by the Ctrl+C handler to break the toggle loop.
  bool stopRequested = false;
  
  // Handle Ctrl+C gracefully: cancel the default termination so the finally-path (pin drive low) can execute before the program exits.
  Console.CancelKeyPress += (_, e) =>
  {
      e.Cancel = true;
      stopRequested = true;
      Console.WriteLine("Ctrl+C detected, exiting...");
  };
  
  Console.WriteLine($"GPIO output toggling started. Pin: {TargetPin}, Mapping Number: {PinNumber}, interval: {IntervalMs}ms, mode:hardware.");
  
  // Obtain the default WinRT GPIO controller.
  // Returns null if no controller is available (driver not loaded or BIOS disabled).
  GpioController? controller = GpioController.GetDefault();
  if (controller is null)
  {
      Console.WriteLine("WinRT GPIO controller is unavailable. Check BIOS pin mux and driver/capability settings.");
      return;
  }
  
  // Open the target pin and configure it as a push-pull output.
  // The pin is held open for the lifetime of the toggle loop via the using statement.
  using GpioPin pin = controller.OpenPin(PinNumber);
  pin.SetDriveMode(GpioPinDriveMode.Output);                  // Set pin mode to output
  pin.Write(GpioPinValue.Low);                                // Set initial value to Low
  
  // Toggle loop: flip the pin state every IntervalMs milliseconds until Ctrl+C.
  GpioPinValue currentValue = GpioPinValue.Low;
  while (!stopRequested)
  {
      // Invert the current pin level.
      currentValue = (currentValue == GpioPinValue.Low) ? GpioPinValue.High : GpioPinValue.Low;
  
      pin.Write(currentValue);
      Console.WriteLine($"{DateTime.Now:HH:mm:ss} {TargetPin} (Mapping Number:{PinNumber}) -> {currentValue}");
  
      if (!stopRequested)
      {
          Thread.Sleep(IntervalMs);
      }
  }
  
  // Release the pin by switching to input (high-impedance), relinquishing drive control
  pin.SetDriveMode(GpioPinDriveMode.Input);
  ```

- Run the compiled executable, you will observe the `GPP_F12` pin outputting high and low signals at approximately 1-second intervals.

#### GPIO Input

The following code sets the `GPP_F12` pin to input mode and read its level status every 0.5 seconds.

- Copy the following code into your project's `Program.cs` file.

  ```c#
  /*!
   * @file Program.cs
   * @brief GPIO level monitor demo for LattePanda Mu using Windows.Devices.Gpio (WinRT API).
   * @Hardware LattePanda Mu (Intel N100/N305)
   * @BIOS S70NC1R200-8G-B or later
   * @author LattePanda Team(https://www.lattepanda.com/)
   * @version V1.0
   * @date 2026-06
   * @license The MIT License (MIT)
   */
  
  using Windows.Devices.Gpio;
  
  // LattePanda Mu(N100/N305): physical GPIO name to WinRT logical GPIO index mapping.
  var PinMapping = new Dictionary<string, int>
  {
      { "GPP_A12",  0 },
      { "GPP_E0",   1 },
      { "GPP_D0",   2 },
      { "GPP_D1",   3 },
      { "GPP_D2",   4 },
      { "GPP_D3",   5 },
      { "GPP_F12",  6 },
      { "GPP_F13",  7 },
      { "GPP_F14",  8 },
      { "GPP_F15",  9 },
      { "GPP_F16", 10 },
      { "GPP_H10", 11 },   // SOC_UART0_RXD - avoid using as GPIO when UART is active.
      { "GPP_H11", 12 },   // SOC_UART0_TXD
      { "GPP_D17", 13 },   // SOC_UART1_RXD
      { "GPP_D18", 14 },   // SOC_UART1_TXD
      { "GPP_F1",  15 },   // SOC_UART2_RXD
      { "GPP_F2",  16 },   // SOC_UART2_TXD
  };
  
  // Target pin to monitor. Change this string to switch to a different pin.
  const string TargetPin = "GPP_F12";
  const int IntervalMs = 1000;    // Polling interval in milliseconds
  
  // Resolve the WinRT GPIO index for the selected pad
  if (!PinMapping.TryGetValue(TargetPin, out int PinNumber))
  {
      Console.WriteLine($"Unknown Pin name: {TargetPin}. Check the mapping table.");
      Console.WriteLine("Press Enter to exit.");
      Console.ReadLine();
      return;
  }
  
  bool stopRequested = false;
  // Register Ctrl+C handler so the user can terminate the monitor loop cleanly
  Console.CancelKeyPress += (_, e) =>
  {
      e.Cancel = true;        // Prevent immediate process termination
      stopRequested = true;
      Console.WriteLine("Ctrl+C detected, exiting...");
  };
  
  Console.WriteLine($"GPIO input monitor started. Pin: {TargetPin}, Mapping Number: {PinNumber}, interval: {IntervalMs}ms, mode: hardware.");
  
  // Obtain the default WinRT GPIO controller.
  // Returns null if the GPIO driver is not loaded or BIOS pin mux is not configured.
  GpioController? controller = GpioController.GetDefault();
  if (controller is null)
  {
      Console.WriteLine("WinRT GPIO controller is unavailable. Check BIOS pin mux and driver/capability settings.");
      Console.WriteLine("Press Enter to exit.");
      Console.ReadLine();
      return;
  }
  
  // Open the target pin and configure it as a floating input.
  using GpioPin pin = controller.OpenPin(PinNumber);
  pin.SetDriveMode(GpioPinDriveMode.Input);
  
  Console.WriteLine("Monitoring pin level. Press Ctrl+C to exit.");
  
  // Poll the pin level at the configured interval and print the current state.
  while (!stopRequested)
  {
      GpioPinValue value = pin.Read();
      Console.WriteLine($"{DateTime.Now:HH:mm:ss} {TargetPin} (Mapping Number:{PinNumber}) -> {value}");
  
      if (!stopRequested)
      {
          Thread.Sleep(IntervalMs);
      }
  }
  ```

- Run the compiled executable, you will observe the `GPP_F12` pin level at approximately 1-second intervals.


## Download Source Project

- [GPIO Programming with C#](../../assets/drivers/mu_edition/LattePanda_Mu_GPIO_Project_CSharp.zip)
