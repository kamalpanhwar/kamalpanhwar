Content-Type: multipart/mixed; boundary="//"
MIME-Version: 1.0

--//
Content-Type: text/cloud-config; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config.txt"

#cloud-config
cloud_final_modules:
- [scripts-user, always]

--//
Content-Type: text/x-shellscript; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="userdata.txt"

#!/bin/bash
sudo apt-get update
sudo apt-get install zsh zsh-theme-powerlevel9k powerline fonts-powerline zsh-syntax-highlighting git zsh-syntax-highlighting -y
sudo usermod -s $(which zsh) $(whoami)
sudo usermod -s $(which zsh) ubuntu
wget https://raw.githubusercontent.com/kamalpanhwar/kamalpanhwar/main/zshrc -O ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
wget https://raw.githubusercontent.com/kamalpanhwar/kamalpanhwar/main/zshrc -O /home/ubuntu/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions /home/ubuntu/.zsh/zsh-autosuggestions
su -l ubuntu
