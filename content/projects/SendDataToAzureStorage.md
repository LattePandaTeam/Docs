## Send light sensor data to Azure storage

**About this document**

This tutorial is adapted from [link](https://github.com/azure/azure-iot-sdk-node) . The functions have been adapted for LattePanda. This samples uses Node.JS, [click](https://developer.microsoft.com/en-us/windows/iot/samples/azuredatauploader) for more language platforms and further tutorials. **What’s Azure Storage**
Azure Storage is the cloud storage solution for modern applications that rely on durability, availability, and scalability to meet the needs of their customers. Azure Storage is massively scalable, so you can store and process hundreds of terabytes of data to support the big data scenarios required by scientific, financial analysis, and media applications. Or you can store the small amounts of data required for a small business website.

### Introduction

This sample shows how to send data from a light sensor to Azure storage using a Node.JS app. This multi-step process includes:

- Prepare your development environment
- Configuring Azure Storage
- Run the Sample and send light sensor data to Azure Storage.

### 2 Steps to run Azure IoT Hub application on your LattePanda.

- [Step 1: Prerequisites](http://www.lattepanda.com/docs/#storage_Prerequisites)
- [Step 2: Set up the hardware](http://www.lattepanda.com/docs/#storage_hardware)
- [Step 3: Build and Run the Sample](http://www.lattepanda.com/docs/#storage_Build)

### Step 1: Prerequisites

You should have the following items ready before beginning the process:

- Computer with Git client installed and access to the [azure-iot-sdks](https://github.com/Azure/azure-iot-sdks) GitHub public repository.
- [Prepare your development environment](http://www.lattepanda.com/docs/#Prepare_your_development_environment).
- If you don’t have a storage account, follow [Setup your Azure Storage](https://azure.microsoft.com/en-us/documentation/articles/storage-create-storage-account/#create-a-storage-account) to set one up.
- [Set up the Arduino](http://www.lattepanda.com/docs/#SetuptheArduino)(It is pre-installed, unless you changed the Arduino program)

### Step 2: Set up the hardware

- Insert [Light Sensor](https://www.dfrobot.com/index.php?route=product/product&search=SEN0043&description=true&product_id=274) into LattePanda analog pin A0, The final setup should look something like this: ![BFC275558BF698A5C21E19A4E3A240D7_meitu_1](http://www.lattepanda.com/wp-content/uploads/2016/02/BFC275558BF698A5C21E19A4E3A240D7_meitu_1.jpg)

### Step 3: Build and Run the sample

- Creat a app.js file and copy the following code into it. be sure to enter valid values for accountName accountKey and arduinoPort. You may also change tableName. Place the file in the folder of your choice on your LattePanda

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

- Open a new shell or Node.js command prompt and navigate to the folder where you placed the sample files. install **azure** , **serialport** and **johnny-five** libraries using the following commands:

  ```
  npm install azure
  npm install johnny-five
  npm install serialport
  ```

- Run the sample application using the following commands, Every 10 seconds, the code will send the value of the light sensor to the table specified. Make sure that StandardFirmataPlus has already uploaded on the board.

  ```
  node app.js
  ```

- You can then view the data being sent to Azure storage with [Power BI](https://powerbi.microsoft.com/en-us/). In Power BI, click on the Get Data button, select ‘Microsoft Azure Table Storage’ as your source, then follow the steps to connect. Once connected you can select your table and view the light sensor data that has been sent from your LattePanda.

  ![azure-storagedata](http://www.lattepanda.com/wp-content/uploads/2016/02/azure-storagedata.png)

  ​


### Source:

[[1]Azure data uploader](https://developer.microsoft.com/en-us/windows/iot/samples/azuredatauploader)