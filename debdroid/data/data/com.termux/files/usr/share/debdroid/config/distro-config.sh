#!/bin/bash
### Prepare the system for post-installation
### Things to do:
### 1. Update and Upgrade the system
### 2. Install Necessary Packages
### 3. Configure User Accounts
### 4. Add the user to sudoers file
### 5. Clean up.
set -e -u

## Install Packages
apt update
apt upgrade -y
apt install nano sudo busybox udisks2 dbus-x11 locales -y
apt autoremove -y
apt clean

## Fix Problems
echo ""
echo "Exporting libgcc_s.so.1 as a walkaround for Tigervnc"
echo "export LD_PRELOAD=$(find /usr/lib -name libgcc_s.so.1)" > /etc/profile.d/walkaround.sh
echo "Adding /sbin path for non-root users"
echo "export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/games:/bin:/sbin:/usr/bin:/usr/sbin:/usr/games" > /etc/profile.d/sbin.sh
echo "export LANG=C.UTF-8" > /etc/profile.d/langenv.sh

## Configure udisks2 as if udisks2 interrupts apt
echo ""
echo "Configuring Udisks2.... "
echo "" > /var/lib/dpkg/info/udisks2.postinst
dpkg --configure -a

## Setup User Accounts
echo "Configuring User Accounts.... "
read -p "Enter your UNIX username (lower case): " username
useradd -s /bin/bash -m $username
passwd $username
echo "Adding the user to sudoers.d file"
echo "$username ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$username
echo "$username" > /etc/userinfo.rc
