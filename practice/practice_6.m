I=imread('C:\Users\vignan\Desktop\dip\practice\image.jpg');
subplot(4,2,1);
imshow(I); 
title('Original Image');


g=rgb2gray(I);
subplot(4,2,2);
imshow(g); 
title('Gray Image');


J=imadjust(g,[0.3 0.7],[]);
subplot(4,2,3);
imshow(J);
title('Enhanced Image of Gray Image');


D= imadjust(I,[0.2 0.3 0; 0.6 0.7 1],[]);
subplot(4,2,4);
imshow(D);
title('Enhanced Image ');

subplot(4,2,5); 
imhist(g); 
title('Histogram of Gray Image');


m=histeq(g);
subplot(4,2,6); 
imshow(m); 
title('Histogram Equalized Image');


subplot(4,2,7); 
imhist(m); 
title('Histogram of Equalized Image');

