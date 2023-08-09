img=imread('C:\Users\vignan\Desktop\dip\histogram.jpg');
img2=rgb2gray(img);
imhist(img2);
j=histeq(img2);
imhist(j);
imshow(j);