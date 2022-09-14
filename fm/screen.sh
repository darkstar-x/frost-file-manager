#!/usr/bin/env bash

# Import colors
source colors/set_colors.sh

# Import banner 
source banner/default.sh

printf "\n\n[0] Clean All Dowloads"
printf "\n[1] Option"
printf "\n[2] Option 2"
printf "\n[3] Help"
printf "\n[3] Support me!"
printf "\n[4] Exit\n"

printf "\n${GRN}Chonse your option?${OFF} "
read user_option

case "$user_option" in
  "0") source ./core.sh
    ;;
  "1") echo "--> 1"
    ;;
  "2") echo "--> 2"
    ;;
  "3") echo "--> 3"
    ;;
  "4") printf "${RED}\nExiting...${OFF}\n"
       exit 0
    ;;
  *)
    echo "Invalid option 0x012"
    exit 1
esac

