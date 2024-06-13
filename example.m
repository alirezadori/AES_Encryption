data = 'This is a massag';
z = [1 2 3 4;5 6 7 8;9 10 11 12; 13 14 15 16];
keys = z';
[encrypted, padnum] =  AESEncryptor(uint8(data),uint8(keys));


dec2hex(encrypted);

dec = AESDecryptor(encrypted,keys,padnum);
decryyptedData = char(dec')

%%%%%%%%%% another example with Image
I = imread('cameraman.tif');

figure
imshow(I)
title("Input Image")

keys = randi([0 255],size(I),'uint8');
[encryptedI, padnum] =  AESEncryptor(I,keys);
encryptedImage = encryptedI(1:end-padnum);
encryptedImage = reshape(encryptedImage,size(I));
figure
imshow(encryptedImage)
title("encrypted IMAGE")

decI = AESDecryptor(encryptedI,keys,padnum);
decImage = reshape(decI,size(I));
figure 
imshow(decImage)
title("decrypted")








