#!/bin/sh
echo "----------------------------"
echo "--- Le process commence ----"
echo "----------------------------"

THEME_NAME='beaver'
ROOT_DIRECTORY="$(pwd)"
echo $ROOT_DIRECTORY
echo $THEME_NAME

# Import variables
source $(dirname $0)/1-variables.sh
source $(dirname $0)/2-wp_install.sh
source $(dirname $0)/3-build_wp.sh

echo "----------------------------"
echo "--------- Terminé ----------"
echo "----------------------------"