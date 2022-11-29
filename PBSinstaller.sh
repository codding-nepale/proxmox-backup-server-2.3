clear
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
echo "deb http://download.proxmox.com/debian/pbs bullseye pbs-no-subscription" >> /etc/apt/sources.list
apt update -y && apt full-upgrade -y && apt install proxmox-backup
clear
echo "installation of the theme in progress..."
bash <(curl -s https://raw.githubusercontent.com/Luckyvb/PBSDiscordDark/master/PBSDiscordDark.sh ) install
clear
echo "install theme end with success and a mandatory restart will be carried out"
systemctl reboot
