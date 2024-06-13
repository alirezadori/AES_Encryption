#  fast AES_Encryption
The AES Encryption algorithm (also known as the Rijndael algorithm) is a symmetric block cipher algorithm with a block/chunk size of 128 bits.
AESEncryptor.m is a function which use an uint8 data (for example an Image or text converted to unsigned Integer 8 bit) and keys with same length.

the output will be ciphered data AND a padnum. padnum is added becuse the AES encryption is a 16 bytes encryptor So if the data lengths is not divisible by 16 then we pad zeros at the end of data. the padnum indicates how many zeros attaced at the end of data and keys.

for decryption we need keys, ciphered code and padnum 
# for use this code you can open example.m and 
this code is a # fast AES encryptor 
