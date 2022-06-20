#!/bin/bash

apt update

apt upgrade

apt install gcc curl wget git make cmake

sh ./setup-zsh.sh
sh ./setup-alacritty.sh
sh ./setup-i3.sh