#!/bin/bash

sudo apt update -y;
sudo apt upgrade -y;

sudo apt install software-properties-common -y

sudo apt update
sudo apt install --no-install-recommends dpkg -y

echo "deb https://ppa.launchpadcontent.net/cubic-wizard/release/ubuntu/ noble main" | sudo tee /etc/apt/sources.list.d/cubic-wizard-release.list
curl -S "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x081525e2b4f1283b" | sudo gpg --batch --yes --dearmor --output /etc/apt/trusted.gpg.d/cubic-wizard-ubuntu-release.gpg

sudo apt update -y;

sudo apt install glib* -y
sudo apt install gtk3-nocsd -y
sudo apt install gnome-settings-daemon -y
sudo apt install gsettings-desktop-schemas -y
sudo apt install --no-install-recommends cubic -y

gsettings list-schemas | grep org.gnome.desktop.interface

exit 0;

