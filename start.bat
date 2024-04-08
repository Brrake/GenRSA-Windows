"C:\Program Files\Git\usr\bin\openssl" genpkey -algorithm RSA -out keys/private_key.pem -pkeyopt rsa_keygen_bits:2048
"C:\Program Files\Git\usr\bin\openssl" rsa -pubout -in keys/private_key.pem -out keys/public_key.pem
pause