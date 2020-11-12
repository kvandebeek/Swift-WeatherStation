# Weerstation

I started this project in 2017 as a combination of the following items:
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
