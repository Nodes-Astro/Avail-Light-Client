#!/bin/bash

echo "\033[1;37m" #console rengi mora döndü

echo " █████╗ ███████╗████████╗██████╗  ██████╗ ███╗   ██╗ ██████╗ ██████╗ ███████╗███████╗";
echo "██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗████╗  ██║██╔═══██╗██╔══██╗██╔════╝██╔════╝";
echo "███████║███████╗   ██║   ██████╔╝██║   ██║██╔██╗ ██║██║   ██║██║  ██║█████╗  ███████╗";
echo "██╔══██║╚════██║   ██║   ██╔══██╗██║   ██║██║╚██╗██║██║   ██║██║  ██║██╔══╝  ╚════██║";
echo "██║  ██║███████║   ██║   ██║  ██║╚██████╔╝██║ ╚████║╚██████╔╝██████╔╝███████╗███████║";
echo "╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝";
echo "";

echo  "\e[0m" #console rengi resetlendi

echo "AstroNodes ekibinin Avail Türkiye için hazırladığı kolay kurulum scriptidir"

#apt fixed
sudo killall apt apt-get > /root/log.txt 2>&1
sudo rm /var/lib/apt/lists/lock > /root/log.txt 2>&1
sudo rm /var/cache/apt/archives/lock > /root/log.txt 2>&1
sudo rm /var/lib/dpkg/lock* > /root/log.txt 2>&1
sudo dpkg --configure -a

#log dosyası oluşturuldu
touch /root/log.txt


#Update Ubuntu Dependencies
printf  "Ubuntu gereklilikleri kuruluyor... \033[0;32m"
sudo apt update > /root/log.txt 2>&1 && sudo apt upgrade -y > /root/log.txt 2>&1
echo "DONE!"
echo  "\e[0m" #console rengi resetlendi


#Install Packages
printf  "Paketler yükleniyor... \033[0;32m" && sleep 1
sudo apt-get install build-essential -y > /root/log.txt 2>&1
sudo apt-get install --assume-yes git clang -y > /root/log.txt 2>&1
sudo sudo apt-get install --assume-yes libssl-dev protobuf-compiler -y > /root/log.txt 2>&1
echo "DONE!"
echo  "\e[0m" #console rengi resetlendi


#Install Rust
printf  "Rust yükleniyor... \033[0;32m" && sleep 1
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y > /root/log.txt 2>&1
source $HOME/.cargo/env > /root/log.txt 2>&1
rustup default stable > /root/log.txt 2>&1
rustup update > /root/log.txt 2>&1
rustup update nightly  > /root/log.txt 2>&1
rustup target add wasm32-unknown-unknown --toolchain nightly > /root/log.txt 2>&1
echo "DONE!"
echo  "\e[0m" #console rengi resetlendi

#Avail Light Node Installing
printf  "Avail Light Client yükleniyor... (Bu aşama donanım özelliklerinize göre 20-30dk arası sürebilmektedir. Lütfen kurulum esnasında bağlantıyı kesmeyiniz)   \033[0;32m" && sleep 1
git clone https://github.com/availproject/avail-light.git > /root/log.txt 2>&1
cd avail-light
git checkout v1.7.9 > /root/log.txt 2>&1
cargo build --release > /root/log.txt 2>&1
echo "DONE!"
echo  "\e[0m" #console rengi resetlendi

#Systemd service creating
printf  "Avail Light Client servisi oluşturuluyor...  \033[0;32m" && sleep 1
sudo tee /etc/systemd/system/availd.service  <<EOF > /root/log.txt 2>&1
[Unit]
Description=Avail Light Client
After=network.target
StartLimitIntervalSec=0

[Service]
User=root
ExecStart= /root/avail-light/target/release/avail-light --network goldberg
Restart=always
RestartSec=120

[Install]
WantedBy=multi-user.target
EOF
echo "DONE!"
echo  "\e[0m" #console rengi resetlendi


#Avail Light Node Service starting
printf  "Avail Light Client servisi başlatılıyor...  \033[0;32m" && sleep 1
systemctl enable availd.service > /root/log.txt 2>&1
systemctl start availd.service > /root/log.txt 2>&1
echo "DONE!\n"


echo "######## Kurulum tamamlandı ##########"
echo  "\e[0m" #console rengi resetlendi

echo "Servis durumunu kontrol etmek için: systemctl status availd.service"
echo "Node loglarını görüntülemek için: journalctl -f -u availd"





