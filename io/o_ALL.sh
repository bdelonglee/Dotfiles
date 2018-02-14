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

sh $HOME/git/in/Dotfiles/io/o_bash.sh
sh $HOME/git/in/Dotfiles/io/o_fonts.sh
sh $HOME/git/in/Dotfiles/io/o_bash.sh
sh $HOME/git/in/Dotfiles/io/o_common.sh
sh $HOME/git/in/Dotfiles/io/o_gtkrc-20.sh
sh $HOME/git/in/Dotfiles/io/o_feh.sh
sh $HOME/git/in/Dotfiles/io/o_i3.sh
sh $HOME/git/in/Dotfiles/io/o_neofetch.sh
sh $HOME/git/in/Dotfiles/io/o_polybar.sh
sh $HOME/git/in/Dotfiles/io/o_ranger.sh
sh $HOME/git/in/Dotfiles/io/o_template.sh
sh $HOME/git/in/Dotfiles/io/o_termite.sh
sh $HOME/git/in/Dotfiles/io/o_tmux.sh
sh $HOME/git/in/Dotfiles/io/o_variety.sh
sh $HOME/git/in/Dotfiles/io/o_vim.sh
sh $HOME/git/in/Dotfiles/io/o_xinitrc.sh
sh $HOME/git/in/Dotfiles/io/o_xresources.sh
sh $HOME/git/in/Dotfiles/io/o_zsh.sh
sh $HOME/git/in/Dotfiles/io/o_END.sh


echo ""
echo "#############################################"
echo ">>> Full Install Done !"
echo "#############################################"

