# ffc-server-l4d2
 *** ความต้องการ Ubuntu 20.04 ขึ้นไป ***

1. ติดตั้งไฟล์ที่จำเป็นก่อน

sudo dpkg --add-architecture i386 # enable multi-arch
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libc6:i386 # install base 32bit libraries
sudo apt-get install lib32z1
sudo apt-get install screen

2. สร้าง user

sudo adduser steam
sudo adduser steam sudo
login

3. ดาวน์โหลด SteamCMD และ ติดตั้ง Left 4 Dead 2 Dedicated Server

wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
./steamcmd.sh
force_install_dir ./l4d2/
login anonymous
app_update 222860 validate

4.รอติดตั้งให้เสร็จ

5.พิมพ์คำสั่ง quit
