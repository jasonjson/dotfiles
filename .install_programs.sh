#!/bin/bash
# Install script for setting up all of my programs on Linux

#==============================================================================
# Adding Repos
#
sudo apt-add-repository ppa:jtaylor/keepass
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

# Opera
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
sudo sh -c 'wget -O - http://deb.opera.com/archive.key | apt-key add -'


#==============================================================================
# Update
#
sudo apt-get update


#==============================================================================
# Specific Installs
#
# Dev
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
sudo apt-get buid-dep python3.4

# Browsers
sudo apt-get install chromium-browser
sudo apt-get install flashplugin-installer
sudo apt-get install opera

# Other
sudo apt-get install filezilla
sudo apt-get install keepass2
sudo apt-get install skype
sudo apt-get install wireshark

#==============================================================================
# Generic Upgrade
#
sudo apt-get upgrade
