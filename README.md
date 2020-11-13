# Weerstation

## Introduction

I started this project in 2017 as a combination of the following items:
* Arduino with sensors to measure outside temperature / air pressure / humidity
* Arduino with an ultrasonic sensor to measure the water level in a rainwater well
* Raspberry Pi running Raspbian (now 'Raspberry PI OS')

Along the way, the following was added/changed:
* 2 indoor sensors, making use of Particle Photon boards
* A website in JS (created in 2017) -> this was converted to a PHP version (in 2019)
* A very simple iOS app (with only a few views)

## Component overview / details

### Housing (Stevenson Screen)

* Stevenson Screen (self-made out of wood, https://en.wikipedia.org/wiki/Stevenson_screen)
* Cabling from Arduino to breakout board: UTP (Cat 5) running through a 20 meter underground plastic tube
* The Arduino itself is placed in a garden shed (where it connects to the internet via Wi-Fi)

### Arduino-based weather station with sensors

* Board type: Arduino Uno WiFi
* Sensors: 
  * SHT-31 (temperature / humidity)
  * MPL3115A2 (air pressure / temperature)
  * MCP9808 (temperature)
* Code can be found in the following repository: https://github.com/kvandebeek/ArduinoUno-WeatherStation

### Arduino-based water level meter with ultrasonic sensor

* Board type: Arduino Uno Wifi
* Sensors:
  * Grove Ultrasonic (this is connected to the Arduino using a 15 meter cable going through an underground plastic tube)
* Other components:
  * LCD display that shows the level (in centimeter) and the percentage relative to the maximum (which is 5000 liter)
  * LED bar with 10 LEDs ranging from 'red' to 'green' to show the level
* Code can be found in the following repository: https://github.com/kvandebeek/ArduinoUno-Waterlevel
* Based on the following project: https://www.automaton.be/blog/niveau-regenwater-meten/3077/

### Raspberry PI running Raspbian

* Operating system: Raspberry PI OS (Debian 10 - Buster)
* Web server: Apache 2
* MySQL server: Ver 15.1 Distrib 10.0.28-MariaDB
* Other tasks: CRON jobs and SHELL scripts to generate weather data

### Indoor sensor for kitchen
* Platform: Particle Photon (https://docs.particle.io/photon/)
* Sensor:
  * MPL3115A2 (Temperature / Barometer)
* Code can be found in the following repository: https://github.com/kvandebeek/ParticlePhoton-IndoorSensors

### Indoor sensor for storage room
* Platform: Particle Photon (https://docs.particle.io/photon/)
* Sensor:
  * MPL3115A2 (Temperature / Barometer)
  * SHT-31 (Temperature / Humidity)
* Code can be found in the following repository: https://github.com/kvandebeek/ParticlePhoton-IndoorSensors
