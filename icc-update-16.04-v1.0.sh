#!/bin/bash

echo -e "\n\nupdate iccd ...\n\n"
cd /root/icc
./icc-cli stop
sleep 10

wget https://github.com/InternetCafeCoin/ICC-CORE/releases/download/v1.0/icc-ubuntu16.04-v1.0.zip
chmod -R 755 /root/icc-ubuntu16.04-v1.0.zip
unzip -o icc-ubuntu16.04-v1.0.zip
sleep 5

rm /root/iccd
rm /root/icc-cli
rm /root/icc-ubuntu16.04-v1.0.zip

chmod -R 755 /root/icc/*

echo -e "\n\nlaunch iccd ...\n\n"
./iccd -reindex

echo "ICC Masternode updated"