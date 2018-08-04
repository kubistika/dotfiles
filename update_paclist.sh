#!/bin/sh
echo "Querying pacman packages, output to pacman_list.txt"
pacman -Q | cut -f 1 -d " " > pacman_list.txt
echo "Successfully updated pacman_list.txt."
