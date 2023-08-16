I=imread('C:\Users\vignan\Desktop\dip\practice\anime.jpg');
figure,
subplot(2,2,1);
subimage(I);
title('Original Image');


B=imresize(I,5);
subplot(2,2,2);
subimage(B);
title('Bilinear Image');


C=imresize(I,5,'nearest');
subplot(2,2,3);
subimage(C);
title('Nearest Image');

D=imresize(I,5,'Bicubic');
subplot(2,2,4);
subimage(D);
title('Bicubic Image');
