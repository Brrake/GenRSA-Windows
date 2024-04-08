# GenRSA-Windows
Genera chiavi RSA utilizzando Git 

1) Scarica e installa Git dal link : https://git-scm.com/download/win 

2) Modifica il file "resources/variables.bat" assicurandoti che GIT_PATH corrisponda alla sottocartella bin dell'installazione di GIT (In genere "C:\Program Files\Git\usr\bin")
    - GIT_PATH : Path di installazione di Git -- DEFAULT : "C:\Program Files\Git\usr\bin"
    - OPENSSL_GIT_PATH : Path di OpenSSL-- DEFAULT : %GIT_PATH%\openssl
    - OPENSSL_KEY_SIZE : Dimensione in bit della chiave RSA -- DEFAULT : 2048
    - OPENSSL_OUT_DIR : Path di uscita della chiavi (Pubblica/Privata) -- DEFAULT : ./keys

3) Apri il file "start.bat" 