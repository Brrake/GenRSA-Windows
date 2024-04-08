@echo off
set GIT_PATH="C:\Program Files\Git\usr\bin"
set OPENSSL_GIT_PATH="%GIT_PATH%\openssl"
%OPENSSL_GIT_PATH% genpkey -algorithm RSA -out keys\private_key.pem -pkeyopt rsa_keygen_bits:2048
%OPENSSL_GIT_PATH% rsa -pubout -in keys\private_key.pem -out keys\public_key.pem
pause