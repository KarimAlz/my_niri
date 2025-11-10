#!/bin/bash

# Define the Unicode bar characters (9 total heights, including empty)
BARS=" ▂▃▄▅▆▇█"

# Loop forever, reading the pipe
while IFS= read -r line; do
  # Remove leading/trailing whitespace
  trimmed_line=$(echo "$line" | tr -d '[:space:]')

  # Initialize the output string
  output=""

  # Split the line into individual bar heights (numbers 0-9)
  for num in $trimmed_line; do
    # Get the character corresponding to the number (index)
    char="${BARS:num:1}"
    output+="$char"
  done

  # Output the final string in JSON format for Waybar
  echo "{\"text\": \"$output\"}"
done </tmp/cava_waybar_pipe
