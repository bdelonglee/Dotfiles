#!/bin/bash

###################################################
# Autor: bdelonglee
# Date: 06-01-2018
# Backup .tmux.conf  to .bkp_dotfiles/tmux
# Install .tmux.conf  from Dotfiles repository
###################################################

REAL_NAME=".tmux.conf"
BKP_DIR_NAME="tmux"
BKP_ROOT=".bkp_dotfiles"

echo "--------------------------------------------"

echo "Install "$REAL_NAME" to your Home"
echo ""

#echo $BKP_ROOT;
#
#if [ -n "$BKP_ROOT" ]; then 
#    echo "Using global "$BKP_ROOT" for backup."
#    else echo "Using per file "$BKP_ROOT_SINGLE" for backup."
#    BKP_ROOT=$BKP_ROOT_SINGLE;
#fi

TARGET_FILE="$HOME/$REAL_NAME"
SOURCE_FILE="../$REAL_NAME"

DOTFILES_BKP="$HOME/$BKP_ROOT"
BKP_DIR="$HOME/$BKP_ROOT/$BKP_DIR_NAME"
DATE=$BKP_DIR"/$(date +"%FT%H%M%S")"

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


cp -f $SOURCE_FILE  $TARGET_FILE ;

echo ""
echo ">>> "$REAL_NAME" Install Done !"

echo "--------------------------------------------"
