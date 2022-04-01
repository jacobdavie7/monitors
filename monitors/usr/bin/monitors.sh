#!/bin/bash

# Run xrandr --listproviders to view monitor outputs. Provider 0 should be GPU, 1-4 should be the adapters.
# Should look like something below:
# Provider 1: id: 0x138 cap: 0x2, Sink Output crtcs: 1 outputs: 1 associated providers: 0 name:modesetting
# ...Goes to provider 4, looks like provider 1                                          ^ This 0 should change to 1 after the commands below

xrandr --setprovideroutputsource 1 0
xrandr --setprovideroutputsource 2 0
xrandr --setprovideroutputsource 3 0
xrandr --setprovideroutputsource 4 0

# run xrandr to view names of adapters (DVI-I-1-1, and DP-0)
xrandr --output DP-0 --primary --auto
xrandr --output DVI-I-1-1 --above DP-0 --auto   #top monitor
xrandr --output DVI-D-0 --left-of DP-0 --auto   #left monitor
xrandr --output HDMI-0 --right-of DP-0 --auto   #right monitor

# https://github.com/AdnanHodzic/displaylink-debian/blob/master/post-install-guide.md
