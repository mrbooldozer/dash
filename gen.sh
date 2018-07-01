#!/bin/sh
mkdir cert
chmod 777 cert
openssl ecparam -genkey -name secp256k1 -out cert/main.pem
openssl ecparam -genkey -name secp256k1 -out cert/mainalert.pem
openssl ecparam -genkey -name secp256k1 -out cert/mainspork.pem
openssl ecparam -genkey -name secp256k1 -out cert/testnetalert.pem
openssl ecparam -genkey -name secp256k1 -out cert/testnetspork.pem
openssl ec -in cert/main.pem -noout -text > cert/main.text
openssl ec -in cert/mainalert.pem -noout -text > cert/mainalert.text
openssl ec -in cert/mainspork.pem -noout -text > cert/mainspork.text
openssl ec -in cert/testnetalert.pem -noout -text > cert/testnetalert.text
openssl ec -in cert/testnetspork.pem -noout -text > cert/testnetspork.text
openssl ec -in cert/main.pem -noout -text > cert/main.hex
openssl ec -in cert/mainalert.pem -noout -text > cert/mainalert.hex
openssl ec -in cert/mainspork.pem -noout -text > cert/mainspork.hex
openssl ec -in cert/testnetalert.pem -noout -text > cert/testnetalert.hex
openssl ec -in cert/testnetspork.pem -noout -text > cert/testnetspork.hex
