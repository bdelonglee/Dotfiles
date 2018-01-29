#!/bin/bash

###################################################
# Autor: bdelonglee
# Date: 06-01-2018
# Backup .Xressources 
###################################################

REAL_NAME=".Xresources"
BKP_DIR_NAME="xresources"
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

    mv $TARGET_FILE $DATE/;

    echo $REAL_NAME" backuped !"
fi


cp -rf $SOURCE_FILE  $TARGET_FILE ;

echo ""
echo ">>> "$REAL_NAME" Install Done !"

echo "--------------------------------------------"

