# 🧰 kali-auto-updater

![Shell Script](https://img.shields.io/badge/language-Bash-blue?logo=gnu-bash)
![Status](https://img.shields.io/badge/status-Active-brightgreen)
![OS](https://img.shields.io/badge/platform-Kali%20Linux-black?logo=linux)

A simple Bash script to update, upgrade, and clean your Kali Linux system — all in one command.

---

## ⚙️ Features

This script runs the following commands automatically:

```bash
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt clean -y
sudo kill-tools-upgrade

⚠️ kill-tools-upgrade is not a standard command.
If it's not installed on your system, you can safely remove or replace it.

🚀 How to Use
1-Download the script:
git clone https://github.com/wizardOfOz669/kali-auto-updater.git
cd kali-auto-updater
2- Make it executable:
chmod +x updatesys.sh
3- Run the script:
./updatesys.sh

📁 File Structure

kali-auto-updater/
├── updatesys.sh   # 🔧 Main update script
└── README.md      # 📄 Project documentation

👨‍💻 Author
Made with 💻 by WizardOfOz669
If you like it, ⭐ the repo and share with fellow hackers!
