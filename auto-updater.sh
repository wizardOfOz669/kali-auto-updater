#!/bin/zsh

# Check for root privileges first
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run with root privileges. Please use 'sudo'."
  echo "Example: sudo ./updatesys.sh"
  exit 1
fi

printf "\n"
echo "System Update Starting Now...."
sleep 2

# --- Core Update Commands ---
echo "--> Updating package lists..."
apt update

echo "\n--> Upgrading installed packages..."
apt upgrade -y

echo "\n--> Performing a full system upgrade..."
apt full-upgrade -y

echo "\n--> Removing obsolete packages..."
apt autoremove -y

echo "\n--> Cleaning up local package cache..."
apt clean

printf "\n"
echo "System Update Process Finished!"
