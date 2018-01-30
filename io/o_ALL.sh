#!/bin/bash

###################################################
# Autor: bdelonglee
# Date: 06-01-2018
# Execute all the installation scripts
# Backup to .bkp_dotfiles
# Install: zsh, bash, vim, i3 etc... 
# Read the following script for more infos
###################################################



echo "#############################################"
echo "Full Install Started !"
echo "#############################################"
echo ""

sh o_bash.sh
sh o_fonts.sh
sh o_gtkrc-20.sh
sh o_i3.sh
sh o_polybar.sh
sh o_template.sh
sh o_tmux.sh
sh o_vim.sh
sh o_xinitrc.sh
sh o_xresources.sh
sh o_zsh.sh

echo ""
echo "#############################################"
echo ">>> Full Install Done !"
echo "#############################################"

