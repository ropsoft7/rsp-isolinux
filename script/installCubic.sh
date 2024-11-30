#!/bin/bash

sudo apt update -y;
sudo apt upgrade -y;

sudo apt install software-properties-common -y

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B7579F80E494ED3406A59DF9081525E2B4F1283B
sudo apt-add-repository universe
sudo apt-add-repository ppa:cubic-wizard/release 

sudo apt update -y;

sudo apt install glib* -y
sudo apt install gtk3-nocsd -y
sudo apt install gnome-settings-daemon -y
sudo apt install gsettings-desktop-schemas -y
sudo apt install --no-install-recommends cubic -y

gsettings list-schemas | grep org.gnome.desktop.interface

exit 0;

