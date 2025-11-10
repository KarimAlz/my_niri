#!/bin/bash
profile=$(powerprofilesctl get)
notify-send "Power profile" "Current profile: $profile"
