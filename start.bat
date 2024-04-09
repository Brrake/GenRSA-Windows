@echo off

set OPENSSL_KEY_SIZE=2048
set OPENSSL_OUT_DIR=keys

echo ---- Benvenuto su GenRSA-Windows! ----

rem Controlla se il file variables.bat esiste
if not exist resources\openssl.exe (
    echo ---- Errore: Il file openssl.exe non è stato trovato. ----
    echo ---- Assicurati di avere tutti i file necessari e riprova. ----
    pause
    exit /b
)

rem Verifica che la cartella di out esista
if not exist %OPENSSL_OUT_DIR% (
    echo ---- Creazione cartella di out... ----
    mkdir %OPENSSL_OUT_DIR%
)

rem Genera private key
echo ---- Generazione private key... ----
.\resources\openssl genpkey -algorithm RSA -out %OPENSSL_OUT_DIR%\private_key.pem -pkeyopt rsa_keygen_bits:%OPENSSL_KEY_SIZE%

rem Genera public key da private key
echo ---- Generazione public key... ----
.\resources\openssl rsa -pubout -in %OPENSSL_OUT_DIR%\private_key.pem -out %OPENSSL_OUT_DIR%\public_key.pem

pause