#!/bin/bash
# Install script for BruteX
#
# VARS
COLOR1='\033[91m'
COLOR2='\033[92m'
COLOR3='\033[92m'
OKBLUE='\033[94m'
RESET='\e[0m'

echo -e "$COLOR1 __________                __         ____  ___$RESET"
echo -e "$COLOR1 \______   \_______ __ ___/  |_  ____ \   \/  /$RESET"
echo -e "$COLOR1  |    |  _/\_  __ \  |  \   __\/ __ \ \     / $RESET"
echo -e "$COLOR1  |    |   \ |  | \/  |  /|  | \  ___/ /     \ $RESET"
echo -e "$COLOR1  |______  / |__|  |____/ |__|  \___  >___/\  \ $RESET"
echo -e "$COLOR1         \/                         \/      \_/$RESET"
echo ""
echo -e "$COLOR1 + -- --=[ BruteX by @xer0dayz$RESET"
echo -e "$COLOR1 + -- --=[ https://xerosecurity.com$RESET"
echo -e "$RESET"

BRUTEX_INSTALL_DIR=/usr/share/brutex

echo -e "$OKBLUE[*]$RESET Installing brutex under $BRUTEX_INSTALL_DIR..."
mkdir -p $BRUTEX_INSTALL_DIR 2> /dev/null
cp -Rf $PWD/* $BRUTEX_INSTALL_DIR 
cd $BRUTEX_INSTALL_DIR
apt-get update
apt-get install -y nmap hydra dnsenum
mkdir loot 2> /dev/null
chmod +x $BRUTEX_INSTALL_DIR/brutex
rm -f /usr/bin/brutex 2> /dev/null
ln -s /usr/share/brutex/brutex /usr/bin/brutex
cp -f $BRUTEX_INSTALL_DIR/brutex.desktop /usr/share/applications/ 2> /dev/null
echo -e "$OKBLUE[*]$RESET Done! $RESET"


