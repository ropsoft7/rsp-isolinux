#!/bin/bash

sudo apt update -y;

sudo apt install distrobox -y;

distrobox create --image ubuntu:22.04 --name cubuntu --nvidia;
distrobox enter cubuntu;

exit 0;

