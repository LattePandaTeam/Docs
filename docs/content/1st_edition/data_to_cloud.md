# Introduction

This sample shows you how to send data from a light sensor to Azure storage using a Node.JS app. This multi-step process includes instructions on how to:

- Prepare your development environment
- Configure Azure Storage
- Run the Sample and send light sensor data to Azure Storage.



**About This Document** 

This tutorial is adapted from this [link](https://github.com/Azure/azure-iot-sdks) . These functions have been adapted for the LattePanda. This sample uses Node.JS. [Click here](https://github.com/Azure/azure-iot-sdks) for more language options and additional tutorials.

**What’s Azure IoT Hub?** 

Microsoft Azure is a cloud computing platform and infrastructure created by Microsoft for building, deploying, and managing applications and services through a global network of Microsoft-managed data centers. Azure IoT Hub is a fully managed service that enables reliable and secure bi-directional communications between millions of IoT devices and an application back end. Azure IoT Hub offers reliable device-to-cloud and cloud-to-device hyper-scale messaging, enabling secure communications using per-device security credentials and access control, and even includes device libraries for the most popular languages and platforms.

## 3 Steps to Sending Data

### Step 1: Prerequisites

You should make sure that you have all of these listed below before beginning the following process:

- Computer with Git client installed and access to the [azure-iot-sdks](https://github.com/Azure/azure-iot-sdks) GitHub public repository.
- [Prepare your development environment](http://www.lattepanda.com/docs/#Prepare_your_development_environment).
- If you don’t have a storage account, follow the instructions detailed in [Setup your Azure Storage](https://azure.microsoft.com/en-us/documentation/articles/storage-create-storage-account/#create-a-storage-account) to set one up.
- [Set up the Arduino](vs_programming.md#step-2-set-up-the-arduino)(It is pre-installed, unless you changed the Arduino program)

### Step 2: Set Up the Hardware

- Insert your [Light Sensor](https://www.dfrobot.com/index.php?route=product/product&search=SEN0043&description=true&product_id=274) into the LattePanda's analog pin A0. The final setup should look something like this: 

  ![BFC275558BF698A5C21E19A4E3A240D7_meitu_1](../../assets/images/LP V1/V1_Azure/BFC275558BF698A5C21E19A4E3A240D7_meitu_1.webp)

### Step 3: Build and Run the Sample

- Creat an app.js file and copy the following code into it. Be sure to enter valid values for accountName, accountKey, and arduinoPort. You may also change tableName, if you would like. Place the file in the folder of your choice on your LattePanda.


```
var azure = require('azure-storage');
var five = require('johnny-five');

var accountName = ''; // Enter your Azure storage account name
var accountKey = ''; // Enter your Azure storage account key
var tableName = 'MyLightSensorData'; // Name of your table to store the light sensor data

var arduinoPort = 'COM3';// Enter your Arduino Port

var tableService = azure.createTableService(accountName, accountKey);

if (CreateTable()) {
InitializeBoard();
}

// Create a table in Azure storage
function CreateTable() {
tableService.createTableIfNotExists(tableName, function (error, result, response) {
  if (error) {
    console.log(error);
    return false;
  }
});
return true;
}

// Initialize the Arduino board with Johnny-Five
function InitializeBoard() {
var board = new five.Board({ port: arduinoPort });

board.on('ready', function () {
  lightSensor = new five.Sensor({
    pin: "A0",
    freq: 10000 // 10 seconds
  });

  lightSensor.on('change', function () {
    InsertValue(this.value);
  });
});
}

function InsertValue(value) {
console.log('Value to insert: ' + value);

// Create entity to store in the table with the value
// of the light sensor and the date.
var entGen = azure.TableUtilities.entityGenerator;
var entity = {
  PartitionKey: entGen.String('Light'),
  RowKey: entGen.String(String(Date.now())),
  intValue: entGen.Int32(value),
  dateValue: entGen.DateTime(new Date().toISOString()),
};

// Insert the entity in the Azure storage table
tableService.insertEntity(tableName, entity, function (error, result, response) {
  if (error) {
    console.log(error);
  }
});
}
```
- Open a new shell or Node.js command prompt and navigate to the folder where you placed the sample files. Then, install **azure** , **serialport** and **johnny-five** libraries using the following commands:

  `npm install azure`

  ``npm install johnny-five`

  `npm install serialport`


- Run the sample application using the following commands. Every 10 seconds, the code will send the value of the light sensor to the table specified. Make sure that StandardFirmataPlus has already been uploaded onto the board.

  `node app.js`


- You can then view the data being sent to Azure storage with [Power BI](https://powerbi.microsoft.com/en-us/). In Power BI, click on the Get Data button, select ‘Microsoft Azure Table Storage’ as your source, and then follow the steps to connect. Once connected, you can select your table and view the light sensor data that has been sent from your LattePanda.

  ![azure-storagedata](../../assets/images/LP V1/V1_Azure/azure-storagedata.webp)

  ​


### Source:

[[1]Azure data uploader](https://developer.microsoft.com/en-us/windows/iot/samples/azuredatauploader)
