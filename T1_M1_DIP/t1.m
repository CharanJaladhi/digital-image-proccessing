image = [
    187 188 189 191 191 191 192 191 190 188;
    190 192 193 194 195 195 196 194 193 192;
    194 196 197 198 200 199 198 197 196 195;
    196 198 200 197 188 202 202 200 199 198;
    199 201 207 168 130 193 198 201 202 202;
    202 207 208 122 116 155 171 155 177 190;
    211 190 130 102 111 94 75 80 136 125;
    161 143 66 86 93 85 65 73 125 94;
    123 105 64 81 89 82 63 74 131 109;
    135 84 67 78 87 81 63 73 124 116
];

%Displaying Original Image
subplot(2,3,1);
imshow(uint8(image));
title('Original Image');

%Displaying Histogram Of Original Image
subplot(2,3,2);
imhist(uint8(image));
title('Histogram Of Original Image');

%Calculating max and min values in the 2-d matrix 'image'
I_max = max(max(image));
I_min = min(min(image));

%Calculating the Contrast Image(A)
contrast_image_A=round(255*((image - I_min) / (I_max - I_min )));
contrast_image_A(contrast_image_A < 0 ) = 0 ;
contrast_image_A(contrast_image_A > 255 ) = 255 ;

%Displaying Contrast Image(A)
subplot(2,3,3);
imshow(uint8(contrast_image_A));
title('Contrast Image(A)');

%Displaying Histogram Of Contrast Image(a)
subplot(2,3,4);
imhist(uint8(contrast_image_A));
title('Histogram Of Contrast Image(A)');

%Calculating the max and min values based on given percentiles
I_min_updated = round( I_min * (5 / 100 ));
I_max_updated = round( I_max * (95 / 100 ));

%Calculating the Contrast Image(B)
contrast_image_B=round(255*((image - I_min_updated) / (I_max_updated - I_min_updated )));
contrast_image_B(contrast_image_B < 0 ) = 0 ;
contrast_image_B(contrast_image_B > 255 ) = 255 ;

%Displaying Contrast Image(B)
subplot(2,3,5);
imshow(uint8(contrast_image_B));
title('Contrast Image(B)');

%Displaying Histogram Of Contrast Image(B)
subplot(2,3,6);
imhist(uint8(contrast_image_B));
title('Histogram Of Contrast Image(B)');