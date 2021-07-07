#!/bin/bash
clear
echo Installing Websocket-SSH Python
sleep 1
echo Cek Hak Akses...
sleep 0.5
cd
#Buat name user github dan nama folder
GitUser="fisabiliyusri"
namafolder="websocket-python"
#wget https://github.com/${GitUser}/main/${namafolder}/

#Install system auto run
#System OpenSSH Websocket-SSH Python
cd
cd /etc/systemd/system/
wget -O /lib/systemd/system/ws-openssh.service https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-openssh.service && chmod +x /lib/systemd/system/ws-openssh.service

#System Dropbear Websocket-SSH Python
wget -O /lib/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-dropbear.service && chmod +x /lib/systemd/system/ws-dropbear.service

#System SSL/TLS Websocket-SSH Python
wget -O /lib/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-stunnel.service && chmod +x /lib/systemd/system/ws-stunnel.service

##System Websocket-OpenVPN Python
wget -O /lib/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-ovpn.service && chmod +x /lib/systemd/system/ws-ovpn.service

#Install Script Websocket-SSH Python
cd
wget -O /home/admin/ws-openssh.py https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-openssh.py && chmod +x /home/admin/ws-openssh.py
wget -O /home/admin/ws-dropbear.py https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-dropbear.py && chmod +x /home/admin/bin/ws-dropbear.py
wget -O /home/admin/ws-stunnel.py https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-stunnel.py && chmod +x /home/admin/ws-stunnel.py
wget -O /home/admin/ws-ovpn.py https://raw.githubusercontent.com/${GitUser}/test1/main/${namafolder}/ws-ovpn.py && chmod +x /home/admin/ws-ovpn.py

#
cd
systemctl daemon-reload
#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
