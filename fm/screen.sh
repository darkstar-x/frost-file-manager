#!/usr/bin/env bash

# Import colors
source colors/set_colors.sh

# Import logo
source banner/default.sh

printf "\n\n[0] Option 0"
printf "\n[1] Option 1"
printf "\n[2] Option 2"
printf "\n[3] Option 3"
printf "\n[4] Clean All Dowloads\n\n"

printf "\n${GRN}Chonse your option?${OFF} "
read user_option

if [ "$user_option" == "4" ]; then
  printf "Ok..."
  sleep 0.5s
  source core.sh
  MOVE_FILES
else
  printf "Error 0x0011"
fi
