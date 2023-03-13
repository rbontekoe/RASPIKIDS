# Applications with the Raspberry Pi

*In this course, you will learn how to work with the Raspberry Pi and Docker containers.*

!!! info
    Kijk in de Blog voor de laatste opmerkingen!

## Introduction

I have a Raspberry Pi 3B+ at home running several programs. These include a program to measure the temperature in the different rooms in my house, a program to retrieve weather data from Visual Crossing, a program to view my electricity and gas consumption, and a recipe database with Italian recipes.

Additionally, I used to participate in [CoderDojo](https://www.leusdenzet.nl/techlab/coderdojo/) events for children at the Technisch Lab of LeusdenZet in the Netherlands. Due to COVID-19 and my age, I have stopped, but I still want to contribute by providing online course material.

In this course, I will show you how to create programs that run on a Raspberry Pi, just like mine. My programs run in Docker containers. A Docker container is a kind of "box" in which we can run programs so that they do not affect each other.

I also enjoy working with Node-RED. This is a program that allows us to build our programs graphically. It is similar to programs for the BBC Micro-bit. There are many [instructional](https://www.youtube.com/channel/UCQaB8NXBEPod7Ab8PPCLLAA) videos about Node-RED available on YouTube.

I use various sensors to measure things, such as the DHT22 to measure temperature and humidity. The ESP8266 and ESP32 are microcontrollers, very small and cheap computers that can communicate with other computers via WiFi. For example, with an MQTT broker.

An MQTT broker is a program that helps exchange information between other computers. This usually happens via a WiFi network.

I use MicroPython as a computer program for the ESP's.

Good luck with the course,

Rob Bontekoe

!!! info
    The MIT license applies to this course:

    The MIT license is a kind of rule that says that people can use, copy, modify, and share a particular program on their computer or other device, as long as they clearly credit the creator and do not sell the program without permission. This is a convenient way to ensure that people can use the program to learn or create things without having to pay for it.


## Who is this course for?

This course is intended for children aged 8 to 14 years old.

## What is a Raspberry Pi?

A Raspberry Pi is a small computer that you can use to do all sorts of fun things, such as creating your own website or playing a game. There are a few things that make Raspberry Pis attractive to use:

They are cheap: you can buy a Raspberry Pi for just a few tens of dollars.
They are small: you can easily take a Raspberry Pi with you in your bag or pocket.
They use little power: because they are small and not very powerful, they do not use as much power as regular computers. So, you can leave the Raspberry Pi on day and night without it costing a lot of power.
They are good for learning about computers: a great way to learn how computers work without having to worry about breaking anything.

![Raspberry Pi 3B+](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/390px-Raspberry_Pi_3_B%2B_%2839906369025%29.png)

**Raspberry Pi 3B+**

This course is designed to work on a [Raspberry Pi 3B+](https://nl.wikipedia.org/wiki/Raspberry_Pi#:~:text=Raspberry%20Pi%203,-De%20RPi%203&text=Op%20Pi%2Ddag%202018%20verscheen,(100%20Mbit%2Fs).). We have tested it to ensure that everything works well on that computer.

```@raw html
<img src="https://seeklogo.com/images/R/raspberry-pi-logo-8240ABBDFE-seeklogo.com.png" alt="Raspberry Pi logo" width="100">
```

## What is Docker?

[Docker](https://en.wikipedia.org/wiki/Docker_(software)) is a program that helps to make software work on different computers. It uses containers, which are like small packages of software that contain everything needed to run a program. It's like a suitcase where you put all your things before going on vacation, so you have everything with you. That's how Docker works, only with software instead of stuff.

There are two types of processors, or "brains," that computers work with: ARM processors and X86 processors. A Raspberry Pi has an ARM processor. PCs usually have an X86 processor.

A container must be adapted to the type of processor on which you want to use it. So if you've made a website that you want to run on a Raspberry Pi, you need a container that's adapted to the ARM processor of the Raspberry Pi. If you want to run that same website on a PC, you need a container that's adapted to the X86 processor of the PC.

With Docker, the developer can ensure that the container is automatically adapted to the type of processor on which it's being run. So you don't have to worry about the program not working properly because Docker ensures that it does work properly.

```@raw html
<img src="https://seeklogo.com/images/D/docker-logo-6D6F987702-seeklogo.com.png" alt="Docker logo" width="120">
```

## What is Portainer?

Portainer is a program that you can use to manage Docker. When using Docker, you may have different containers that you want to start, stop, or remove. Portainer makes it easier to perform these tasks by providing a user-friendly graphical interface for managing the containers.

Imagine you have a box of toys and you want to know which toys are inside. With Portainer, it's like you can open the box and see the toys, and you can also pick up the toys and put them back in the box if you want. This way, you can easily see which containers you have and what they do, and you can easily manage them.

So Portainer is a kind of "management program" for Docker that makes it easier to use and manage Docker. If you have many containers or if you are new to Docker, Portainer can help you understand and use everything better.

```@raw html
<img src="https://seeklogo.com/images/P/portainer-wordmark-logo-9C4DA30483-seeklogo.com.png" alt="Portainer logo" width="300">
```

## What is Node-RED?

[Node-RED](https://en.wikipedia.org/wiki/Node-RED#:~:text=Node%2DRED%20is%20a%20flow,IBM%20Emerging%20Technology) is a program that allows you to easily create small programs, or "flows". You can do this by dragging and dropping buttons and other elements onto a screen and connecting them with lines.

Imagine you have a game where you have to complete various tasks. With Node-RED, it's like you can lay out the tasks in a row, and indicate what should happen when you complete a task with arrows. For example, you can specify that when you finish cleaning up, you can watch a movie.

Node-RED is often used to automate things or to collect and process information from different sources. For example, you can use Node-RED to check for new emails or to measure the temperature in your home and turn on the heating when it gets too cold.

```@raw html
<img src="https://seeklogo.com/images/N/node-red-logo-03ED3C7805-seeklogo.com.png" alt="Node-RED logo" width="100">
```

## What is an MQTT broker?

An [MQTT broker](https://en.wikipedia.org/wiki/MQTT)) is a program used to send and receive information over Wi-Fi using a protocol called MQTT, which stands for "Message Queuing Telemetry Transport."

All devices that want to communicate with the MQTT broker must first "register." This means they sign up with the MQTT broker and let it know that they want to send or receive information.

Node-RED is a program designed with special features to easily communicate with an MQTT broker over Wi-Fi.

```@raw html
<img src="https://seeklogo.com/images/M/mqtt-logo-C92D58AA94-seeklogo.com.png" alt="MQTT logo" width="200">
```

## What is an ESP8266 or an ESP32?

The ESP8266 and the [ESP32](https://nl.wikipedia.org/wiki/ESP32) are microcontrollers, meaning they are small computers designed to perform simple tasks.

```@raw html
<img src="https://elektronicavoorjou.nl/wp-content/uploads/2019/12/NodeMcu-Lua-WIFI-Board-ESP8266-CP2102-1.jpg" alt="ESP8266" width="300">
```

**ESP8266 from [elektronicavoorjou.nl](https://elektronicavoorjou.nl/product/nodemcu-esp8266-wifi-board/) that I use to send the output of a DHT22 to my Raspberry Pi**

They both have a Wi-Fi connection, which means they can communicate with other devices. This makes them useful for projects where you want the microcontroller to communicate via Wi-Fi. They are often used in electronic projects, for example, in combination with a DHT22 to measure the temperature in a room and send it to an MQTT broker.

```@raw html
<img src="https://elektronicavoorjou.nl/wp-content/uploads/2021/01/DHT22-1.jpg" alt="DHT22" width="300">
```

**DHT22 from [elektronicavoorjou.nl](https://elektronicavoorjou.nl/product/dht22-temp-vocht-sensor/) that measures temperature and humidity levels**

## What is a sensor and ea smart meter?

A sensor is a device that can detect or measure information, such as temperature, light, or motion. Sensors are often used in electronic projects or devices to collect information about the environment.

Imagine you want to create a device that indicates when a room is too cold or too hot. You can use a temperature sensor to measure the temperature and control the device to give a notification when it gets too cold or too hot. This way, you can easily see when to turn the heating on or off.

A smart meter is a specific type of sensor used to measure energy consumption. Smart meters are connected to the internet, so you can see how much energy you are using and how much it costs remotely. This can be useful if you want to reduce your energy consumption or if you want to know how much money you are saving by being energy-efficient.

Therefore, sensors and smart meters are devices that can detect or measure information. They can be used to collect all kinds of information, such as temperature or energy consumption, and can be used in electronic projects or devices to monitor the environment.

```@raw html
<img src="https://www.sossolutions.nl/media/catalog/product/cache/5df5c040ed8cd3972c59a8e190e44350/1/_/1.8m_kabel.png" alt="P1 kabel" width="300">
```

**P1 cable from [www.sossolutions.nl](https://www.sossolutions.nl/slimme-meter-kabel) that I use to connect my Smart Meter to my Raspberry Pi**

## What is MicroPython?

MicroPython is a specific version of the Python programming language designed to run on small computers, such as microcontrollers. MicroPython is useful if you want your programs to run quickly and efficiently on a small computer, such as a microcontroller.

Imagine you want to create a robot that can move and avoid obstacles. You can use MicroPython to program the robot, so it knows how to move and how to react to obstacles. This allows you to easily create a program that lets the robot move and navigate.

MicroPython is often used in electronic projects where a small computer, such as a microcontroller, is used. It is a convenient way to write programs that run efficiently on a small computer and are easy to understand.

During the course, we use the Thonny program to create MicroPython code.

```@raw html
<img src="https://seeklogo.com/images/M/micropython-logo-6255D51390-seeklogo.com.png" alt="MicroPython logo" width="80">
```