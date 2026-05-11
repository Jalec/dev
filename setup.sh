#!/bin/bash

scope=all

while getopts ank flag
do
  case "${flag}" in
    a) echo "You selected complete setup copy"
       scope=all;;
    n) echo "You selected nvim setup copy"
       scope=nvim;;
    k) echo "You selected kitty setup copy"
       scope=kitty;;
  esac
done

if [[ "$scope" == "all" || "$scope" == "nvim" ]]; then
  # Copy contents of nvim dev configuration
  mkdir -p ~/.config/nvim
  cp -R ~/dev/nvim-dev/. ~/.config/nvim
fi

if [[ "$scope" == "all" || "$scope" == "kitty" ]]; then
  # Copy contents of kitty dev configuration
  mkdir -p ~/.config/kitty
  cp -R ~/dev/kitty-dev/. ~/.config/kitty
fi



