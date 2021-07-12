#!/bin/bash

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- icanhazip.com);
domain=$(cat /etc/v2ray/domain)
echo Script AutoCreate Akun SSH dan OpenVPN Mod By SL
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Terima Kasih Telah Menggunakan Layanan Kami"
echo -e "Informasi Akun SSH & OpenVPN"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "==============================="
echo -e "IP Server         : $IP"
echo -e "Host              : $domain"
echo -e "OpenSSH           : 22, 500"
echo -e "Dropbear          : 143, 109"
echo -e "SSH WS CDN        : 80 ,8880"
echo -e "SSL/TLS WS CDN    : 443"
echo -e "SSL/TLS           : 444"
echo -e "badvpn            : 7100, 7200, 7300"
echo -e "==============================="
echo -e "Aktif Sampai   : $exp"
echo -e "==============================="
echo -e "Payload Default WS:"
echo -e "GET / HTTP/1.1[crlf]Host: [crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "Script Mod by SL"
