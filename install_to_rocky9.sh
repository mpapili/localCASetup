#! /bin/bash

# (or whatever your cert is; be sure to copy to client server first)
sudo cp ca.cert.pem /etc/pki/ca-trust/source/anchors/

# Update the trusted CA store
sudo update-ca-trust
