img=imread('C:\Users\vignan\Desktop\dip\1st_exp\bb.jpg');
subplot(2,2,1);
imshow(img);
title('Original Image');
i=rgb2gray(img);
c=edge(i,'canny');
subplot(2,2,2);
imshow(c);
title('Edge Detection');
