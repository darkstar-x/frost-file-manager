#!/usr/bin/env bash

### COLORS
OFF='\e[0m'           # Text Reset

# Normal Colors
BLK='\e[0;30m'        # Black
RED='\e[0;31m'        # Red
GRN='\e[0;32m'        # Green
YLW='\e[0;33m'        # Yellow
BLU='\e[0;34m'        # Blue
PRL='\e[0;35m'        # Purple
CYN='\e[0;36m'        # Cyan
WHT='\e[0;37m'        # White

# Bold Colors
BLUB='\e[1;34m'        # Blue
YLWB='\e[1;33m'        # Yellow
CYNB='\e[1;96m'        # Cyan
REDB='\e[1;91m'        # Red

# Light Colors
BLKL='\e[0;90m'        # Black
REDL='\e[0;91m'        # Red
GRNL='\e[0;92m'        # Green
YLWL='\e[0;93m'        # Yellow
BLUL='\e[0;94m'        # Blue
PRLL='\e[0;95m'        # Purple
CYNL='\e[0;96m'        # Cyan
WHTL='\e[0;97m'        # White

# Underline Colors
WHTU='\033[4;37m'       # White


# CLear the terminal
clear

### LOGO ASCII
printf "${CYNB}
 ____ ____ ____ ____ ___   ____ _ _    ____ 
|___ |__/ |  | [__   |    |___ | |    |___ 
|    |  \ |__| ___]  |    |    | |___ |___${OFF}\n${PRLL}by HXVRMXNV${OFF}"

### SETERS
PWD=$(pwd $path)
icon=' '

### START
MOVE_FILES() {
  # Check path of files by extensions
  printf "${GRNL}${icon}Path of IMG: ${OFF}"
  read img_path

  printf "${GRNL}${icon}Path of APK: ${OFF}"
  read apk_path

  printf "${GRNL}${icon}Path of RAR: ${OFF}"
  read rar_path

  printf "${GRNL}${icon}Path of ZIP: ${OFF}"
  read zip_path

  printf "\n${REDL}${icon}${OFF}${REDB}Cleaning all downloads${OFF}\n"

  #mv -v *.jpg ~/.static_img | lolcat --24bit
  #mv -v *.png ~/.static_img | lolcat --24bit
  #mv -v *.jpeg ~/.static_img | lolcat --24bit
  #mv -v *.apk /ssf/compress/apk | lolcat --24bit
  #mv -v *.rar /ssf/compress/rar | lolcat --24bit
  #mv -v *.zip /ssf/compress/zip | lolcat --24bit
}

# Entry point
printf "\n\n${GRNL}${icon}Enter the absolute path: ${OFF}"
read path ; cd $path 

printf "${REDL}${icon}Are you aware that you entered the path correctly? [y/N]: ${OFF}"
read option

# Check user confirmation
if [ "$option" = "y" ]; then
  printf "${YLWL}${icon}Using current path:${OFF} ${PWD}\n\n"
  MOVE_FILES
else
  printf "${PRLL}${icon}Approaching the operation!${OFF}\n"
  exit 1
fi

printf "${GRNL}${icon}Exiting with code 0${OFF}\n"

