#!/bin/bash
# Install script for BruteX
#
# VARS
COLOR1='\033[91m'
COLOR2='\033[92m'
COLOR3='\033[92m'
RESET='\e[0m'

echo -e "$COLOR1 __________                __         ____  ___$RESET"
echo -e "$COLOR1 \______   \_______ __ ___/  |_  ____ \   \/  /$RESET"
echo -e "$COLOR1  |    |  _/\_  __ \  |  \   __\/ __ \ \     / $RESET"
echo -e "$COLOR1  |    |   \ |  | \/  |  /|  | \  ___/ /     \ $RESET"
echo -e "$COLOR1  |______  / |__|  |____/ |__|  \___  >___/\  \ $RESET"
echo -e "$COLOR1         \/                         \/      \_/$RESET"
echo ""
echo -e "$COLOR1 + -- --=[BruteX v1.5 by 1N3$RESET"
echo -e "$COLOR1 + -- --=[http://crowdshield.com$RESET"
echo -e "$RESET"

# DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
INSTALL_DIR=/usr/share/brutex

echo -e "$OKGREEN + -- --=[This script will install brutex under $INSTALL_DIR. Are you sure you want to continue?$RESET"
read answer

mkdir -p $INSTALL_DIR 2> /dev/null
cp -Rf $PWD/* $INSTALL_DIR 
cd $INSTALL_DIR

echo -e "$OKORANGE + -- --=[Installing package dependencies...$RESET"
apt-get install nmap hydra dnsenum

echo -e "$OKORANGE + -- --=[Setting up environment...$RESET"
mkdir loot 2> /dev/null
chmod +x $INSTALL_DIR/brutex
rm /usr/bin/brutex
ln -s $INSTALL_DIR/brutex /usr/bin/brutex

echo -e "$OKORANGE + -- --=[Done!$RESET"
echo -e "$OKORANGE + -- --=[To run, type 'brutex'! $RESET"


