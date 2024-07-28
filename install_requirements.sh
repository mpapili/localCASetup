#! /bin/bash

# Install necessary packages
sudo apt update
sudo apt install -y openssl

# Create directory structure
sudo mkdir -p /root/ca/{certs,crl,newcerts,private}
sudo chmod 700 /root/ca/private
sudo touch /root/ca/index.txt
sudo echo 1000 > /root/ca/serial

# Generate root CA private key
sudo openssl genrsa -aes256 -out /root/ca/private/ca.key.pem 4096

# Generate root CA certificate
sudo openssl req -new -x509 -days 7300 -key /root/ca/private/ca.key.pem -sha256 -out /root/ca/certs/ca.cert.pem

echo "your local CA key is at: /root/ca/private/ca.key.pem"
echo "your local CA cert is at: /root/ca/certs/ca.cert.pem"
