# 🚀 Kali Linux Auto-Updater Script

![Kali Linux](https://img.shields.io/badge/Kali_Linux-557C94?style=for-the-badge&logo=kali-linux&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A simple yet powerful Bash script to automate Kali Linux system updates, upgrades, and cleanup.

## ✨ Features

- **One-command automation**: Handles all update operations in sequence
- **Root verification**: Automatically checks for sudo privileges
- **Verbose output**: Clear progress indicators with emoji visuals
- **System cleanup**: Removes obsolete packages and cleans cache
- **Lightweight**: Single script with no dependencies

## 🛠️ Script Contents (updatesys.sh)

```bash
#!/bin/bash

# =============================================
# Kali Linux Auto-Updater
# Version 2.0 - Optimized
# =============================================

# Verify root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "❗ Please run with sudo"
  echo "Example: sudo ./updatesys.sh"
  exit 1
fi

echo -e "\n🔹 Starting system update..."
sleep 1

# Update package lists
echo -e "\n🔸 Updating package lists..."
apt update

# Upgrade system
echo -e "\n🔸 Upgrading packages..."
apt upgrade -y
apt full-upgrade -y

# Cleanup
echo -e "\n🔸 Cleaning system..."
apt autoremove -y
apt clean -y

echo -e "\n✅ System update completed successfully!"
🚦 Requirements

    Kali Linux system

    sudo/root privileges

    Internet connection

⚡ Quick Start
1- Download the script:
    git clone https://github.com/wizardOfOz669/kali-auto-updater.git
    cd kali-auto-updater

2- Make executable:
    chmod +x updatesys.sh

3- Run with sudo:
    sudo ./updatesys.sh
⚠️ Important Notes

    Always back up important data before system upgrades

    Recommended to run in a terminal (not through GUI)

    Monitor the process if running on critical systems

📜 License

This project is licensed under the MIT License - see the LICENSE file for details.
Made with ❤️ by WizardOfOz669
