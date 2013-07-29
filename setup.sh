#!/bin/bash

if [ -z `which compass` ]; then
	echo "Installing compass..."
	sudo gem install compass
fi

if [ -z `which npm` ]; then
	echo "NodeJS is not installed, please install it from http://nodejs.org/download/."
	exit 1
fi

echo "Installing dependencies..."

npm install

echo "Installing Grunt..."

npm install -g grunt-cli

echo "Running server task."

grunt server