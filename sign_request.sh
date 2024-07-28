#! /bin/bash

echo "your local CA should be at /root/ca/certs/ca.cert.pem"
echo "your local CA key should be at /root/ca/private/ca.key.pem"
sudo openssl x509 -req -in rocky9-server2.csr -CA /root/ca/certs/ca.cert.pem -CAkey /root/ca/private/ca.key.pem -CAcreateserial -out rocky9-server2.crt -days 375 -sha256
