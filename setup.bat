@echo off
echo "Installing compass..."
call gem install compass
echo "Installing dependencies..."
call npm install
echo "Installing Grunt..."
call npm install grunt-cli -g
echo "Starting..."
call grunt server
