#!/bin/bash

# Sistem Güncelleme ve Gerekli Paketlerin Kurulumu
sudo apt update -y && sudo apt upgrade -y
sudo apt install ca-certificates zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev tmux iptables curl nvme-cli git wget make jq libleveldb-dev build-essential pkg-config ncdu tar clang bsdmainutils lsb-release libssl-dev libreadline-dev libffi-dev jq gcc screen unzip lz4 -y

# Docker Kurulumu
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
docker version

# Docker-Compose Kurulumu
VER=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)
curl -L "https://github.com/docker/compose/releases/download/$VER/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Docker Kullanıcı İzni Ayarlama
sudo groupadd docker
sudo usermod -aG docker $USER

# UniChain Node Kurulumu
git clone https://github.com/Uniswap/unichain-node
cd unichain-node

# EndPoint Ayarlarını Yapma
echo "DRPC=https://drpc.org?ref=8dd4b5" >> .env.sepolia
echo "Quick Node=https://refer.quicknode.com/?via=Z" >> .env.sepolia

# UniChain Node'u Çalıştırma
docker compose up -d

# Kurulum Doğrulama
curl -d '{"id":1,"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["latest",false]}' \
  -H "Content-Type: application/json" http://localhost:8545

echo "Sistem gereksinimleri kuruldu"

echo -e "\n###############################"
echo "# The guide was prepared by Hitasyurek."
echo "###############################\n"

echo "Tw / X : https://x.com/hitasyurek"
echo "TG : https://t.me/ROVEtm\n"
