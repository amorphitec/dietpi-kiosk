#!/bin/bash

# Source DietPi-Globals
. /boot/dietpi/func/dietpi-globals

# Disable cursor when using Chromium and mouse is not moving as per
# https://github.com/MichaIng/DietPi/issues/2575
G_AGI unclutter
/usr/bin/echo '/usr/bin/unclutter -idle 0.1 &' > /etc/chromium.d/99-dietpi-unclutter
