sudo apt update
sudo apt install python2.7 python-pip
sudo apt install curl

pip install supervisor

cp ./configs/* ~/
cp /etc/v2ray/config.json ~/v2ray.json

bash <(curl -L -s https://install.direct/go.sh)

print "config reference https://intmainreturn0.com/v2ray-config-gen/"
print 'supervisord -c ./supervisord.conf'

sudo supervisord

/usr/bin/v2ray/v2ray -config ~/v2ray.json