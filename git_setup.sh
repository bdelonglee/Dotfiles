#!/bin/bash
set -e

echo ""
echo "#################################################"
echo "###### GIT Config Start #########################"
echo "#################################################"
echo ""

git init
git config --global user.name "bdelonglee"
git config --global user.email "bdelonglee@gmail.com"
sudo git config --system core.editor vim
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple

echo ""
echo "#################################################"
echo "###### GIT Config End ###########################"
echo "#################################################"
echo ""
