#! /bin/bash

# Generate private key for the server
sudo openssl genrsa -out rocky9-server2.key 2048

# Create a Certificate Signing Request (CSR)
sudo openssl req -new -key rocky9-server2.key -out rocky9-server2.csr
