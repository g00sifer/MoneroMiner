#!/bin/bash
cd
mkdir mining
cd mining/
wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-focal-x64.tar.gz
tar xf xmrig-6.12.1-focal-x64.tar.gz
cd xmrig-6.12.1/
rm config.json
wget https://raw.githubusercontent.com/g00sifer/MoneroMiner/main/config.json -O config.json
./xmrig
