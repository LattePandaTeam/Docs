# Introduction

This project provides a minimum HTTP-based firmata controller for various hardware, typically Arduino. This extends user's control and monitoring of the hardware using platform-independant URL requests. **Support list:**

- Digital Pins
- Analog Pins
- PWM
- Servo

This is just a few of the many possibilities. We welcome you build, extend and experiment with the features you need.

# Install and run the client

You should have the following items ready before beginning the process:

- [clone or Download](https://github.com/LattePandaTeam/LattePanda-Development-Support/tree/master/FirmateWebClient#introduction) this project files in the folder of your choice.

- Install [NodeJS.](https://nodejs.org/) Make sure that version of NodeJS is greater than 4.0.
- Open a new shell or Node.js command prompt and navigate to the folder where you placed the project files. Run the following commands to install `johnny-five` and `serialport` package.

```
npm install johnny-five
npm install serialport
```

- Follow this [tutorial](http://www.lattepanda.com/docs/#SetuptheArduino) to setup your arduino
- Run the client using the following commands:

```
node FirmateWebClient.js
```

< h2 id="FirmateWebClient_ Usage">Usage Add these parameters to GET request to control the client, you can also see the following examples to learn how to use it.

##### Set digital pin

Write to a digital pin and set it to output mode

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_digital/13/1',//command/the digital pin to write to(0~13)/0 or 1
  method: 'GET'
};
```

##### Set PWM pin

Write to an analog pin using Pulse-width modulation (PWM)

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_pwm/3/255',//command/Analog output pin(3,4,6,9,10,11)/0(0V)~255(5V)
  method: 'GET'
};

```

##### Set servo pin

Write the angle to a specified pin and set it to servo mode

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/set_servo/3/255',//command/Servo output pin(0~13)/Angle from 0 to 180.
  method: 'GET'
};
```

##### Sweep servo

Sweep servo from 0-180 and repeat

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/sweep_servo/3',//command/Servo output pin(0~13)
  method: 'GET'
};

```

##### Stop servo

Stop a moving servo

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/stop_servo/3',//command/Servo output pin(0~13)
  method: 'GET'
};

```

##### Read all pins state

It allow you to read all pins state and will return you a json object

```
var url = {
  hostname: 'localhost',//your device ip
  port: 23456,//server port, default 23456
  path: '/read_all_pins',//command
  method: 'GET'
};

```

You will receive an object like this

```
{
    "command":["read_all_pins"],
    "data":{"0":"false",..."13":"false","A0":"0.75",..."A5":"0.67"}
}
```