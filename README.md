# Command

1. Update Dulu 

apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot

2. Install Semua VPN Batch 

sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/fisabiliyusri/test1/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh


3. Hanya Install SSH ,SSH SSL(Stunnel) dan SSH-WS Python ,BadVPN UDPGW 

sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/fisabiliyusri/test1/main/install/sshonly.sh && chmod +x sshonly.sh && sed -i -e 's/\r$//' sshonly.sh && screen -S sshonly ./sshonly.sh


