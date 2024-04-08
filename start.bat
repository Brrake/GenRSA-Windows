@echo off

echo ---- Benvenuto su GenRSA-Windows! ----

rem Controlliamo se il file variables.bat esiste
if not exist resources\variables.bat (
    echo ---- Errore: Il file variables.bat non è stato trovato. ----
    echo ---- Assicurati di avere tutti i file necessari e riprova. ----
    pause
    exit /b
)

call resources/variables.bat

rem Controlliamo se Git è installato nel percorso specificato
if not exist %GIT_PATH% (
    echo ---- Errore: Non e' stato possibile trovare Git nel percorso specificato: %GIT_PATH% ----
    echo ---- Assicurati di aver installato Git e di aver configurato correttamente il percorso nel file resources\variables.bat. ----
    echo ---- Scarica Git da questo link : https://git-scm.com/download/win ----
    pause
    exit /b
)

rem Verifica che la cartella di out esista
if not exist %OPENSSL_OUT_DIR% (
    echo ---- Creazione cartella di out... ----
    mkdir %OPENSSL_OUT_DIR%
)

rem Generate private key
echo ---- Generazione private key... ----
%OPENSSL_GIT_PATH% genpkey -algorithm RSA -out %OPENSSL_OUT_DIR%\private_key.pem -pkeyopt rsa_keygen_bits:%OPENSSL_KEY_SIZE%

rem Generate public key from private key
echo ---- Generazione public key... ----
%OPENSSL_GIT_PATH% rsa -pubout -in %OPENSSL_OUT_DIR%\private_key.pem -out %OPENSSL_OUT_DIR%\public_key.pem

pause