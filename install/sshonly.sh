  
#!/bin/bash
#created : 

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";


#wget https://github.com/${GitUser}/
GitUser="fisabiliyusri"
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/hanyassh.sh && chmod +x hanyassh.sh && screen -S hanyassh.sh ./hanyassh.sh
wget https://raw.githubusercontent.com/${GitUser}/test1/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/shadowsocksobfs.sh && chmod +x shadowsocksobfs.sh && screen -S ss ./shadowsocksobfs.sh
wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
#wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
rm -f /root/ssh-vpn.sh
rm -f /root/hanyassh.sh
rm -f /root/websocket.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ssr.sh
rm -f /root/shadowsocksobfs.sh
rm -f /root/ins-vt.sh
rm -f /root/go.sh
rm -f /root/ipsec.sh
history -c
echo "1.1" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Script Mod SL YNTKTS-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                  : 22, 500"  | tee -a log-install.txt
echo "   - SSH-WS OpenSSH           : 2095"  | tee -a log-install.txt
echo "   - SSH-WS Dropbear          : 8880"  | tee -a log-install.txt
echo "   - SSH-WS SSL/TLS           : 443"  | tee -a log-install.txt
echo "   - Stunnel4 SSL/TLS         : 444, 777"  | tee -a log-install.txt
echo "   - Dropbear                 : 143, 109"  | tee -a log-install.txt
echo "   - Badvpn                   : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                    : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 00.00 GMT +7" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "------------------------------------------Mod by SL------------------------------------------" | tee -a log-install.txt
echo ""
echo " Reboot 10 Sec"
sleep 10
reboot
