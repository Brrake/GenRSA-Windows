@echo off
set GIT_PATH="C:\Program Files\Git\usr\bin"
set OPENSSL_GIT_PATH=%GIT_PATH%\openssl

rem Check if the keys directory exists, if not, create it
if not exist keys (
    mkdir keys
)

rem Generate private key
%OPENSSL_GIT_PATH% genpkey -algorithm RSA -out keys\private_key.pem -pkeyopt rsa_keygen_bits:2048

rem Generate public key from private key
%OPENSSL_GIT_PATH% rsa -pubout -in keys\private_key.pem -out keys\public_key.pem

pause