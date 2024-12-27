#!/bin/bash

echo "Oppdaterer systemet..."
sudo apt update && sudo apt upgrade -y

echo "Installerer nødvendige pakker..."
sudo apt install -y git curl python3-pip build-essential

echo "Kloner prosjekt fra GitHub..."
git clone https://github.com/<your-repo-url> ~/project

echo "Kjører ROS2-installasjonsskript..."
bash ~/project/raspberry_pi/ros2_setup.sh

echo "Setter opp miljøvariabler..."
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
echo "source ~/project/ros_ws/install/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "Konfigurasjon ferdig!"
