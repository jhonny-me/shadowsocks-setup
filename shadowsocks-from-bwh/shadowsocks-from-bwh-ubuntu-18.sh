sudo apt update
sudo apt install python2.7 python-pip

pip install supervisor
pip install shadowsocks

cp ./configs/* ~/

wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar zxf LATEST.tar.gz
cd libsodium*
./configure
sudo make && sudo make install

cat <<EOT >> /etc/ld.so.conf
/lib
/usr/lib64
/usr/local/lib
EOT

sudo ldconfig

print 'supervisord -c ./supervisord.conf'

sudo ssserver -c ~/shadowsocks.json start
