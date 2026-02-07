# 卸载R
sudo apt purge -y r-base r-base-core r-recommended
sudo apt autoremove --purge -y
sudo apt clean

# 卸载vscode
sudo apt update
sudo apt purge -y code code-insiders || true
sudo apt autoremove --purge -y
sudo apt clean

# 卸载positron
sudo apt update
sudo apt purge -y positron
sudo apt autoremove --purge -y
sudo apt clean

