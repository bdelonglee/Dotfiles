#!/bin/bash

###################################################
# Autor: bdelonglee
# Date: 06-01-2018
# Backup ui.conf  variety.conf to .bkp_dotfiles/zsh
# Install ui.conf variety.conf from Dotfiles repository
###################################################

REAL_NAME1=".config/variety/ui.conf"
REAL_NAME2=".config/variety/variety.conf"
BKP_DIR_NAME="variety"
BKP_ROOT=".bkp_dotfiles"


TARGET_FILE1="$HOME/$REAL_NAME1"
TARGET_FILE2="$HOME/$REAL_NAME2"
SOURCE_FILE1="../$REAL_NAME1"
SOURCE_FILE2="../$REAL_NAME2"

DOTFILES_BKP="$HOME/$BKP_ROOT"
BKP_DIR="$HOME/$BKP_ROOT/$BKP_DIR_NAME"
DATE=$BKP_DIR"/$(date +"%FT%H%M%S")"

echo "--------------------------------------------"

echo "Install "$REAL_NAME1" and "$REAL_NAME2" to your Home"
echo ""

if [ -e "$TARGET_FILE1" ] || [ -e "$TARGET_FILE2" ]; then

    if [ ! -d "$DOTFILES_BKP" ]; then
       mkdir $DOTFILES_BKP ;
    fi

    if [ ! -d "$BKP_DIR" ]; then
       mkdir $BKP_DIR ;
    fi

    if [ ! -d "$DATE" ]; then
       mkdir $DATE ;
    fi

    mv $TARGET_FILE1 $DATE/;
    mv $TARGET_FILE2 $DATE/;

    echo $REAL_NAME1" backuped !"
    echo $REAL_NAME2" backuped !"
fi


cp -f $SOURCE_FILE1  $TARGET_FILE1 ;
cp -rf $SOURCE_FILE2  $TARGET_FILE2 ;

echo ""
echo ">>> "$REAL_NAME1" and "$REAL_NAME2" Install Done !"

echo "--------------------------------------------"
