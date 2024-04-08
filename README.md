# GenRSA-Windows
Genera chiavi RSA utilizzando Git 

1) Scarica Git dal link : https://git-scm.com/download/win 

2) Modifica il file "resources/variables.bat" assicurandoti che GIT_PATH corrisponda alla sottocartella bin dell'installazione di GIT (Solitamente "C:\Program Files\Git\usr\bin")
    - GIT_PATH : Path di installazione di Git
    - OPENSSL_GIT_PATH : Path di OpenSSL
    - OPENSSL_KEY_SIZE : Dimensione in bit della chiave RSA
    - OPENSSL_OUT_DIR : Path di uscita della chiavi (Pubblica/Privata)

3) Apri il file "start.bat" 