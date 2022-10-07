#!/usr/bin/env bash

### Import colors
full_path="/frost/colors/set_colors.sh"

source colors/set_colors.sh
pwd

### Import banner
source banner/default.sh 

### SETERS
PWD=$(pwd $path)
icon=" "
warning=" "

# User input and group files for mv
MOVE_FILES() {
  # Check path of files by extensions
  printf "${GRNL}${icon}Do you want to separate the images by extension (Y)es or (N)o ? ${OFF}"
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
    
    #mv -v *.jpg $jpg_path
    #mv -v *.png $jpeg_path
    #mv -v *.jpeg $png_path

  elif [ "$option" = "n" -o "$option" = "N" ]; then
    printf "${GRNL}${icon}Path of IMG: ${OFF}"
    read img_path
    printf "${GRNL}${icon}OK...\n${OFF}"
    
    mv *.{jpg,jpeg,png,webp} $img_path 

  fi

  # Separate files by extension or not
  printf "\n${GRNL}${icon}Do you want to separate all compressed files by extension (Y)es or (N)o ? ${OFF}"
  read option_

  # Check user option
  if [ "$option_" = "y" -o 42G"$option_" = "Y" ]; then
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

  printf "\n${REDL}${warning}${OFF}${REDB}Cleaning all downloads${OFF}\n"

   #mv -v *.apk /ssf/compress/apk | lolcat --24bit
  #mv -v *.rar /ssf/compress/rar | lolcat --24bit
  #mv -v *.zip /ssf/compress/zip | lolcat --24bit
}

# Entry point
printf "\n\n${YLWL}${warning}Do you want to continue or go back to the main menu (Y)es or (N)o ? ${OFF}"
read chosen_option

if [ "$chosen_option" == "y" -o "$chosen_option" == "Y" ]; then

  printf "\n\n${GRNL}${icon}Enter the absolute path: ${OFF}"
  read path ; cd $path 

  printf "${REDL}${warning}Are you aware that you entered the path correctly (Y)es or (N)o ? ${OFF}"
  read option

  # Check user confirmation
  if [ "$option" == "y" ]; then
    printf "${YLWL}${icon}Using current path:${OFF} ${PWD}\n\n"
    MOVE_FILES
  else
    printf "${PRLL}${warning}Approaching the operation!${OFF}\n"
    exit 1
  fi

  printf "${GRNL}${icon}Exiting with code 0${OFF}\n"
else
  ./screen.sh
fi
