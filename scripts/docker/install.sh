#! /bin/bash

COLOR_GREEN="\033[32m"
COLOR_YELLOW="\033[33m"
COLOR_NORMAL="\033[0;39m"

echo_color_green() {
	msg=$1
	printf '%s' "$COLOR_GREEN"
	echo '%s' "$msg";
	printf '%s' "$COLOR_NORMAL"
}

echo_color_yellow() {
	msg=$1
	printf '%s' "$COLOR_YELLOW"
	echo '%s' "$msg";
	printf '%s' "$COLOR_NORMAL"
}

clear

echo_color_green "cd to root folder"
cd ./../../

echo_color_green "Running composer install --quite"
composer install --quite

echo_color_green "Running yarn install"
yarn install

echo_color_green "Compile assets using laravel-mix"
yarn dev

echo_color_green "Install packages/dependencies successfully"
