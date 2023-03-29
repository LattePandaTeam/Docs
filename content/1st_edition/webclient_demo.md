# Introduction

This project provides a minimal HTTP-based firmata controller for various hardware, especially the Arduino. This, in turn, extends the user's control and ability to monitor the hardware using platform-independant URL requests. **Support list:**

- Digital Pins
- Analog Pins
- PWM
- Servo

This is just a few of the many possibilities. We welcome you to build, extend, and experiment with the features you need.

## Install and Run the Client

You should have the following items ready before beginning this process:

- [Copy or Download](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/FirmateWebClient#introduction) this project's files into the folder of your choice.

- Install [NodeJS.](https://nodejs.org/) Make sure that the version of NodeJS you install is greater than 4.0.
- Open a new shell or Node.js command prompt and navigate to the folder where you placed the project files. Run the following commands to install the `johnny-five` and `serialport` packages.

```
npm install johnny-five
npm install serialport
```

- Follow this [tutorial](/content/1st_edition/vs_programming.md#step-2-set-up-the-arduino) to setup your arduino
- Run the client using the following commands:

```
node FirmateWebClient.js
```

< h2 id="FirmateWebClient_ Usage">Usage Add these parameters to GET a request to control the client. You can also view the following examples to learn how to use this service.

#### Set Digital Pin

Write to a digital pin and set it to output mode

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_digital/13/1',//command/the digital pin to write to(0~13)/0 or 1
  method: 'GET'
};
```

#### Set PWM Pin

Write to an analog pin using Pulse-Width Modulation (PWM)

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_pwm/3/255',//command/Analog output pin(3,4,6,9,10,11)/0(0V)~255(5V)
  method: 'GET'
};

```

#### Set Servo Pin

Write an angle to a specified pin and set it to servo-mode

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_servo/3/255',//command/Servo output pin(0~13)/Angle from 0 to 180.
  method: 'GET'
};
```

#### Sweep Servo

Sweep a servo from 0-180 degrees, and continuously repeat

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/sweep_servo/3',//command/Servo output pin(0~13)
  method: 'GET'
};
```

#### Stop Servo

Stop a moving servo

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/stop_servo/3',//command/Servo output pin(0~13)
  method: 'GET'
};

```

#### Read All Pins' States

This code allows you to read all of the pins' states, and will return a json object

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/read_all_pins',//command
  method: 'GET'
};

```

After completion, you will receive an object like this:

```
{
    "command":["read_all_pins"],
    "data":{"0":"false",..."13":"false","A0":"0.75",..."A5":"0.67"}
}
```
## Examples

You can see all examples in the `/examples` folder. [Click here to see more user experiences.](https://www.lattepanda.com/forum/topic/313005)

##### Turn On a LED

In this example, we will turn on an LED which is connected to digital pin 13.

- Open a new shell or Node.js command prompt and navigate to the `/examples` folder
- Run the sample javascript code using the following commands: `node set_digital.js`

##### Set PWM

In this example, we assign a pulse width modulation (PWM) value to an output pin (D3, D5, D6, D9, D10, D11) to dim or brighten an LED. In this sample, we use the onboard LED which connects to digital pin 13.

- Open a new shell or Node.js command prompt and navigate to the `/examples` folder
- Run the sample javascript code using the following commands: `node set_pwm.js`

##### Set Servo

In this example, we will set the servo motor to the 20 degrees position.

- Open a new shell or Node.js command prompt and navigate to the `/examples` folder
- Insert the servo into pin D9
- Run the sample javascript code using the following commands: `node set_servo.js`

##### Read Light Sensor Output

In this example, we will detect the value of a light sensor via an analog pin (A0~A5)

- Open a new shell or Node.js command prompt and navigate to the `/examples` folder
- Connect a [Light Sensor](https://www.dfrobot.com/product-1428.html) to analog pin A0
- Run the sample javascript code using the following commands: `node read_analog.js`
- The value of the sensor will be printed out on your screen.

