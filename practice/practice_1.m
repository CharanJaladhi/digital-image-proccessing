img=imread('C:\Users\vignan\Desktop\dip\image.jpg');
subplot(4,4,1);
imshow(img);
subimage(img);
title('Original Image');

r=img(:,:,1);
subplot(4,4,2);
imshow(r);
subimage(r);
title('Red Component');

g=img(:,:,2);
subplot(4,4,3);
imshow(g);
subimage(g);
title('Green Component');

b=img(:,:,3);
subplot(4,4,4);
imshow(b);
subimage(b);
title('Blue Component');

gr=rgb2gray(img);
subplot(4,4,5);
imshow(gr);
subimage(gr);
title('Gray Image');

c=imcomplement(img);
subplot(4,4,6);
imshow(c);
subimage(c);
title('Complement of color image');

cgr=imcomplement(gr);
subplot(4,4,7);
imshow(cgr);
subimage(cgr);
title('Complement of gray image');

o=ones(40);
z=zeros(40);

d=[o z;z o];e=[o o;z z];
f=10*(e+d);
h=e.*d;
i=e-d;
j=e/4;

subplot(4,4,8);
imshow(d);
subimage(d);

subplot(4,4,9);
imshow(e);
subimage(e);

subplot(4,4,10);
imshow(f);
subimage(f);

subplot(4,4,11);
imshow(h);
subimage(h);

subplot(4,4,12);
imshow(i);
subimage(i);

subplot(4,4,13);
imshow(j);
subimage(j);