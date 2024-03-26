#!/bin/bash

cd
opkg install git
opkg install git-http
opkg install python3
opkg install python3-pip
opkg install jq
opkg install sysstat
pip3 install telepot requests python-telegram-bot
opkg list-installed | grep python3
pip3 list
git clone https://github.com/ahmadqsyaa/TELEXWRT
mv /root/TELEXWRT/edy /etc/init.d/
mv /root/TELEXWRT/edy.py /usr/bin/
chmod +x /etc/init.d/edy
chmod +x /usr/bin/edy.py
chmod +x /root/TgBotWRT/*
rm -rf /root/TELEXWRT/plugins
rm -rf /root/TELEXWRT/image.png
clear
echo "silahkan masukan id username & token bot setelah ini"
sleep 
clear
nano /root/TELEXWRT/AUTH
sleep 4
clear
service edy enable
echo "mengaktifkan service ..."
sleep 4
echo "success service start"
clear
sleep 4
service edy start
sleep 2
exit
