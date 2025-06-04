#!/bin/bash

usage=$(sudo /usr/bin/radeontop -d - -l 1 2>/dev/null | grep -oP 'gpu \K[0-9]+(\.[0-9]+)?')

if [[ -n "$usage" ]]; then
  usage_int=$(printf "%.0f" "$usage")
  echo "%{F#cba6f7}GPU%{F-} ${usage_int}%"
else
  echo "%{F#cba6f7}GPU%{F-} N/A"
fi

