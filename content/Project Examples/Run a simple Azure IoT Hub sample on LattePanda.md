## Run a simple Azure IoT Hub sample on LattePanda

**About this document** This tutorial is adapted from [link](https://github.com/Azure/azure-iot-sdks) . The functions have been adapted for LattePanda. This samples uses Node.JS, [click](https://github.com/Azure/azure-iot-sdks) for more language platforms and further tutorials.**What’s Azure IoT Hub** Microsoft Azure is a cloud computing platform and infrastructure created by Microsoft for building, deploying, and managing applications and services through a global network of Microsoft-managed data centers. Azure IoT Hub is a fully managed service that enables reliable and secure bi-directional communications between millions of IoT devices and an application back end. Azure IoT Hub offers reliable device-to-cloud and cloud-to-device hyper-scale messaging, enables secure communications using per-device security credentials and access control, and includes device libraries for the most popular languages and platforms.

### Introduction

This document describes how to build and run the Azure IoT Hub application on your LattePanda.

This multi-step process includes:

- Prepare your development environment
- Configuring Azure IoT Hub
- Registering your IoT device
- Build and deploy Azure IoT SDK on device
- Run the Sample and send data to Azure IoT Hub.

### 2 Steps to run Azure IoT Hub application on your LattePanda.

- [Step 1: Prerequisites](http://www.lattepanda.com/docs/#IotHub_Prerequisites)
- [Step 2: Build and Run the Sample](http://www.lattepanda.com/docs/#IotHub_Build)

### Step 1: Prerequisites

You should have the following items ready before beginning the process:

- Computer with Git client installed and access to the [azure-iot-sdks](https://github.com/Azure/azure-iot-sdks) GitHub public repository.
- [Prepare your development environment](http://www.lattepanda.com/docs/#Prepare_your_development_environment).
- [Setup your IoT hub](http://www.lattepanda.com/docs/#Set_up_IoT_Hub)
- [Provision your device and get its credentials](http://www.lattepanda.com/docs/#manage_iot_hub)

#### Step 2: Build and Run the sample

- Get the following sample files from https://github.com/azure/azure-iot-sdk-node
  - **package.json**
  - **simple_sample_device.js**
- Place the files in the folder of your choice on the target machine/device
- Open the file **simple_sample_device.js** in a text editor.
- Locate the following code in the file:

```
var connectionString = '[IoT Device Connection String]';
```

- Replace `[IoT Device Connection String]` with the connection string for your device. Save the changes.

- From the shell or command prompt you used earlier to run the **iothub-explorer** utility, use the following command to receive device-to-cloud messages from the sample application (Substitute`[iot hub connection string]` with the IoT Hub connection string you previously copied):

  ```
  iothub-explorer login "[iot hub connection string]"
  ```

- Create a new device identity called `myDeviceId` with the command:

  ```
  iothub-explorer create myDeviceId --connection-string
  ```

- Open a new shell or Node.js command prompt and navigate to the folder where you placed the sample files. Run the sample application using the following commands:

  ```
  npm install
  node simple_sample_device.js
  ```

- The sample application will send messages to your IoT hub, and the **iothub-explorer** utility will display the messages as your IoT hub receives them.

### Prepare your development environment

This document describes how to prepare your development environment to use the **Microsoft Azure IoT SDK for Node.js**.

#### Setup your development environment

Complete the following steps to set up your development environment:

- Ensure that Node.js version 0.12.x or later is installed. Run `node --version` at the command line to check the version.
- installed [Node.js](http://nodejs.org/),
- clone [azure-iot-sdks](https://github.com/Azure/azure-iot-sdks) to your development machine or device. You should always use the **master**branch for the latest version of the libraries and samples.
- Open the **Node.js command prompt** and navigate to the **node** folder in your local copy of this repository ([azure-iot-sdks](https://github.com/Azure/azure-iot-sdks)). Run the `build\dev-setup.cmd` script to prepare your development environment.

### Set up IoT Hub

Before you can communicate with IoT Hub from a device you must create an IoT hub instance in your Azure subscription and then provision your device in your IoT hub.

#### Create an IoT hub

You can use the [Azure Portal](https://portal.azure.com/) to create an IoT hub to use with your devices.

1. Log on to the [Azure Portal](https://portal.azure.com/).

2. In the jumpbar, click **New**, then click **Internet of Things**, and then click **Azure IoT Hub**.

   ![create-iot-hub1](http://www.lattepanda.com/wp-content/uploads/2016/02/create-iot-hub1-1.png)

3. In the **New IoT Hub** blade, specify the desired configuration for the IoT Hub.

   ![create-iot-hub2](http://www.lattepanda.com/wp-content/uploads/2016/02/create-iot-hub2.png)

   - In the **Name** box, enter a name to identify your IoT hub. When the **Name** is validated, a green check mark appears in the **Name** box.
   - Change the **Pricing and scale tier** as desired. The getting started samples do not require a specific tier.
   - In the **Resource group** box, create a new resource group, or select and existing one. For more information, see [Using resource groups to manage your Azure resources](https://azure.microsoft.com/documentation/articles/resource-group-portal/).
   - Use **Location** to specify the geographic location in which to host your IoT hub.

4. Once the new IoT hub options are configured, click **Create**. It can take a few minutes for the IoT hub to be created. To check the status, you can monitor the progress on the Startboard. Or, you can monitor your progress from the Notifications section.
   ![create-iot-hub3](http://www.lattepanda.com/wp-content/uploads/2016/02/create-iot-hub3.png)

5. After the IoT hub has been created successfully, open the blade of the new IoT hub, take note of the hostname URI, and click **Shared access policies**.
   ![create-iot-hub4](http://www.lattepanda.com/wp-content/uploads/2016/02/create-iot-hub4.png)

6. Select the Shared access policy called **iothubowner**, then copy and take note of the connection string on the right blade. ![create-iot-hub5](http://www.lattepanda.com/wp-content/uploads/2016/02/create-iot-hub5.png)

   Your IoT hub is now created, and you have the connection string you need to use the [iothub-explorer or the Device Explorer](http://www.lattepanda.com/docs/#manage_iot_hub) tool. This connection string enables applications to perform management operations on the IoT hub such as adding a new device to the IoT hub.

### Manage IoT Hub

Before a device can communicate with IoT Hub, you must add details of that device to the IoT Hub device identity registry. When you add a device to your IoT Hub device identity registry, the hub generates the connection string that the device must use when it establishes its secure connection to your hub. You can also use the device identity registry to disable a device and prevent it from connecting to your hub. To add devices to your IoT hub and manage those devices, you can use either of:

- The cross-platform, command-line [iothub-explorer](http://www.lattepanda.com/docs/#iothub-explorer) tool
- Graphical [Device Explorer](https://github.com/Azure/azure-iot-sdk-csharp/tree/master/tools/DeviceExplorer) tool

Use either of these tools to generate a device-specific connection string that you can copy and paste in the source code of the application running on your device. Both tools are available in this [repository](https://github.com/Azure/azure-iot-sdks).

- Note: While IoT Hub supports multiple authentication schemes for devices, both these tools generate a pre-shared key to use for authentication.
- Note: You must have an IoT hub running in Azure before you can provision your device. The document [Set up IoT Hub](http://www.lattepanda.com/docs/#Set_up_IoT_Hub) describes how to set up an IoT hub.

You can also use both of these tools to monitor the messages that your device sends to an IoT hub and send commands to you your devices from IoT Hub.

#### Use the iothub-explorer tool to provision a device

The iothub-explorer tool is a cross-platform, command-line tool (written in Node.js) for managing your devices in IoT hub. You will need to pre-install Node.js for your platform including npm package manager from [nodejs.org](https://nodejs.org/) To install this tool in your environment, run the following command in a terminal/shell window on your machine: `npm install -g iothub-explorer` See [Install iothub-explorer](https://github.com/azure/iothub-explorer) for more information. To provision a new device:

1. Get the connection string for your IoT hub. See [Set up IoT Hub](http://www.lattepanda.com/docs/#Set_up_IoT_Hub) for more details.

2. Run the following command to register your device with your IoT hub. When you run the command, replace `[iothub connection string]` with the IoT Hub connection string from the previous step and replace `myDeviceId` with a name for your device such as **mydevice**.

   ```
   iothub-explorer login "[iothub connection string]"
   iothub-explorer create myDeviceId --connection-string
   ```

You should see a response like this: `Created device mydevice - ... - connectionString: HostName=<hostname>;DeviceId=mydevice;SharedAccessKey=<device-key>` Copy the device connection string information for later use. The samples in this repository use connection strings in the format: `HostName=<iothub-name>.azure-devices.net;DeviceId=<device-name>;SharedAccessKey=<device-key>.` To get help on using the iothub-explorer tool to perform other tasks such as listing devices, deleting devices, and sending commands to devices, enter the following command: `iothub-explorer --help` For further information about using the iothub-explorer tool to perform tasks such as disabling a device, monitoring a device, and sending commands to a device see:

- [Working with the device identity registry](https://github.com/Azure/azure-iot-sdks/blob/master/tools/iothub-explorer/readme.md#identityregistry)
- [Working with devices](https://github.com/Azure/azure-iot-sdks/blob/master/tools/iothub-explorer/readme.md#devices)