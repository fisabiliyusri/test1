if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://raw.githubusercontent.com/fisabiliyusri/auto1/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
fi
mkdir /var/lib/premium-script;
echo "Enter the VPS Subdomain Hostname, if not available, please click Enter"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/crot-script/ipvps.conf
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/sodosok.sh && chmod +x shadowsocksobfs.sh && screen -S ss ./shadowsocksobfs.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
wget https://raw.githubusercontent.com/fisabiliyusri/auto1/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/shadowsocksobfs.sh
rm -f /root/ssr.sh
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
echo "   - OpenSSH                  : 22, 500, 40000"  | tee -a log-install.txt
echo "   - SSH WS Python OpenSSH    : 100"  | tee -a log-install.txt
echo "   - SSH WS Python Dropbear   : 69"  | tee -a log-install.txt
echo "   - SSH WS Python SSL/TLS    : 99"  | tee -a log-install.txt
echo "   - OpenVPN                  : TCP 1194, UDP 2200, SSL 992"  | tee -a log-install.txt
echo "   - Stunnel4 SSL/TLS         : 443, 30000"  | tee -a log-install.txt
echo "   - Dropbear                 : 143, 109, 50000"  | tee -a log-install.txt
echo "   - Squid Proxy              : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                   : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                    : 81"  | tee -a log-install.txt
echo "   - Wireguard                : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN           : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                 : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                 : 5555"  | tee -a log-install.txt
echo "   - Shadowsocks-R            : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS              : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP             : 3443-3453"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS          : 4443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS     : 80"  | tee -a log-install.txt
echo "   - Trojan                   : 6443"  | tee -a log-install.txt
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
