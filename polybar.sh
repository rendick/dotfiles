#!/bin/bash

killall -q polybar

polybar --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
