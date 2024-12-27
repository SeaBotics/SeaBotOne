#!/bin/bash

echo "Oppdaterer systemet..."
# Oppdaterer systemet
sudo apt update && sudo apt upgrade -y

echo "Installerer nødvendige pakker..."
# Installerer nødvendige pakker 
sudo apt install -y git curl python3-pip build-essential cmake

# Kloner prosjektet fra GitHub
if [ ! -d "~SeaBotOne" ]; then
    echo "Kloner prosjekt fra GitHub..."
    git clone https://github.com/SeaBotics/SeaBotOne.git ~/SeaBotOne
fi

# Gi kjørbarhet til ROS2-installasjonsskript
chmod +x ~/SeaBotOne/raspberry_pi/ros2_setup.sh

echo "Oppsett fullført!
