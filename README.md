# Weerstation

## Introduction

I started this project in 2017 as a combination of the following items:
* Arduino with sensors to measure outside temperature / air pressure / humidity
* Arduino with an ultrasonic sensor to measure the water level in a rainwater well
* Raspberry Pi running Raspbian (now 'Raspberry PI OS')

Along the way, the following was added/changed:
* 2 indoor sensors, making use of Particle Photon boards
* A website in JS -> this was converted to a PHP version
* A very simple iOS app (I don't consider myself to be a developer)

## Component overview / details

### Housing (Stevenson Screen)

* Stevenson Screen (self-made out of wood, https://en.wikipedia.org/wiki/Stevenson_screen)
* Cabling from Arduino to breakout board: UTP (Cat 5) running through a 20 meter underground plastic tube
* The Arduino itself is placed in a garden shed (where it connects to the internet via Wi-Fi)

### Arduino with sensors to measure weather

* Board type: Arduino Uno WiFi
* Sensors: 
**
**
**
* Code can be found in the following repository:

### Arduino with ultrasonic sensor to measure water level in a rainwater well

* Board type: Arduino Uno Wifi
* Sensors:
** 
** 
** 
* Code can be found in the following repository: 
* 

### Raspberry PI running Raspbian

* Operating system: 
* Web server: 
* MySQL server: 
* Other tasks:

- an Arduino with temperature / air pressure / humidity sensors connected, housed in a Stevenson Screen (https://en.wikipedia.org/wiki/Stevenson_screen)
- an Arduino with an ultrasonic sensor to measure the water level in a rainwater well, inspired by an article I read (https://www.automaton.be/blog/niveau-regenwater-meten/3077/)
- a Raspberry PI running Raspbian (currently at 'Debian 10', Buster - https://en.wikipedia.org/wiki/Raspberry_Pi_OS)
  - this acts as a web server (Apache) that hosts my website
  - it is also a MySQL server (MariaDB) that hosts the data
  - it runs CRON jobs and has scripts to generate data that are displayed on the website and in the iOS app

Additions/changes in 2020:
- 2 indoor sensors, making use of Particle Photon boards
- Changed the initial website which was in JS with a PHP version
- Created a simple iOS app
  - Works on iPhone (iPad not supported)
  - Shows data from the webserver
  - Uses an external chart library to show historic data
  - Is used to get more familiar with test automation
