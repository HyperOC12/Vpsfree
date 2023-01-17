if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

echo "#######################################################################################"
echo "#"
echo "#                                  VPSFREE.FR SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2022 - 2023, VPSFREE.FR"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Install Minecraft Server Files"
echo "* [1] Install Warp to enable Ipv4 on Ipv6 only"
echo "* [2] Install PufferPanel"
echo "* [3] Install WebPage"
echo "* [4] Install CRDP/XRDP"
echo "* [5] Install Basic Packages"
echo "* [6] Check all container"
echo "* [7] Exit"

read -p "Enter Input (0-6): " input

case $input in

    0)
    apt update
    wget -N https://raw.githubusercontent.com/HyperQR/Vpsfree/main/scripts/minecraftscript/install.sh && bash install.sh;;
    1)
    apt update
    apt install curl -y
    wget -N https://raw.githubusercontent.com/HyperQR/Vpsfree/main/scripts/warpv6/install.sh && bash install.sh;;
    2)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    3)
    wget -N https://raw.githubusercontent.com/HyperQR/Vpsfree/main/scripts/websitescript/install.sh && bash install.sh;;
    4)
    wget -N https://raw.githubusercontent.com/HyperQR/Vpsfree/main/scripts/crdscript/install.sh && bash install.sh;;
    5)
    apt install git
    apt install neofetch
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    6)
   wget -N https://raw.githubusercontent.com/HyperQR/Vpsfree/main/scripts/pvescripts/execall.sh && bash install.sh;;
    7) echo "Exit" && exit;;
esac
