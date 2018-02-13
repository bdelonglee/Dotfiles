#!/bin/bash

###################################################
# Autor: bdelonglee
# Date: 06-01-2018
# Backup .fonts  to .bkp_dotfiles/fonts
# Add font from repository to .fonts
###################################################

REAL_NAME=".fonts"
BKP_DIR_NAME="fonts"
BKP_ROOT=".bkp_dotfiles"


TARGET_FILE="$HOME/$REAL_NAME"
SOURCE_FILE="../$REAL_NAME"

DOTFILES_BKP="$HOME/$BKP_ROOT"
BKP_DIR="$HOME/$BKP_ROOT/$BKP_DIR_NAME"
DATE=$BKP_DIR"/$(date +"%FT%H%M%S")"

echo "--------------------------------------------"

echo "Install "$REAL_NAME" to your Home"
echo ""

if [ -e "$TARGET_FILE" ]; then

    if [ ! -d "$DOTFILES_BKP" ]; then
       mkdir $DOTFILES_BKP ;
    fi

    if [ ! -d "$BKP_DIR" ]; then
       mkdir $BKP_DIR ;
    fi

    if [ ! -d "$DATE" ]; then
       mkdir $DATE ;
    fi

    cp -r $TARGET_FILE $DATE/;

    echo $REAL_NAME" backuped !"
fi

mkdir -p $HOME/.fonts
cp  $SOURCE_FILE/*  $TARGET_FILE/ ;

echo ""
echo ">>> "$REAL_NAME" Install Done !"

fc-cache -fv;

echo ""
echo ">>> Font Cache upadated !"

echo "--------------------------------------------"

