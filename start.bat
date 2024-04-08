@echo off
set GIT_PATH="C:\Program Files\Git\usr\bin"

rem OpenSSL Configuration
set OPENSSL_GIT_PATH=%GIT_PATH%\openssl
set OPENSSL_KEY_SIZE=2048
set OPENSSL_OUT_DIR=keys

rem Check if the keys directory exists, if not, create it
if not exist %OPENSSL_OUT_DIR% (
    mkdir %OPENSSL_OUT_DIR%
)

rem Generate private key
%OPENSSL_GIT_PATH% genpkey -algorithm RSA -out %OPENSSL_OUT_DIR%\private_key.pem -pkeyopt rsa_keygen_bits:%OPENSSL_KEY_SIZE%

rem Generate public key from private key
%OPENSSL_GIT_PATH% rsa -pubout -in %OPENSSL_OUT_DIR%\private_key.pem -out %OPENSSL_OUT_DIR%\public_key.pem

pause