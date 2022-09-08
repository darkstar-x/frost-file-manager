#!/usr/bin/env bash

# Import colors
source colors/set_colors.sh

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
  printf "${GRNL}${icon}Do you want to separate the images by extension? [y/N]: ${OFF}"
  read option

  # Check user option
  if [ "$option" = "y" ]; then
    printf "${GRNL}${icon}Path of .jpg: ${OFF}"
    read jpg_path

    printf "${GRNL}${icon}Path of .png: ${OFF}"
    read png_path

    printf "${GRNL}${icon}Path of .jpeg: ${OFF}"
    read jpeg_path
    
    printf "${GRNL}${icon}OK...\n${OFF}"

  else
    printf "${GRNL}${icon}Path of IMG: ${OFF}"
    read img_path
  fi
  
  # Separate files by extension or not
  printf "\n${GRNL}${icon}Do you want to separate all compressed files by extension? [y/N] ${OFF}"
  read option_

  # Check user option
  if [ "$option_" = "y" -o "$option_" = "Y" ]; then
    printf "${GRNL}${icon}Path of APK: ${OFF}"
    read apk_path

    printf "${GRNL}${icon}Path of RAR: ${OFF}"
    read rar_path

    printf "${GRNL}${icon}Path of ZIP: ${OFF}"
    read zip_path

  else
    printf "${GRNL}${icon}Path of compress file: ${OFF}"
    read compress_path
  fi

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

