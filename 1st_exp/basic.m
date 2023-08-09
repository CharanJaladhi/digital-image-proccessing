
A=imread('C:\Users\vignan\Desktop\dip\1st_exp\aa.jpg');

B=imread('C:\Users\vignan\Desktop\dip\1st_exp\bb.jpg');
l=imsubtract(A,B);
k=imadd(A,B);
j=immultiply(A,B);
imshow(j)
f=bitand(A,255);
z=imdivide(A,B);
imshow(z)
