clc
clf
clear

%1
figure(1)
original_image = imread('standard_test_images/livingroom.tif');
imshow(original_image)
title('Living Room')
[x_size, y_size] = size(original_image)
info = imfinfo('standard_test_images/livingroom.tif');
bit_depth = info.BitDepth;
space_in_bit = x_size * y_size * bit_depth
space_in_byte = space_in_bit / 8


%2
figure(2)
BW_image = imbinarize(original_image);
imshow(BW_image)
title('Black and White')

%2.1
figure(3)
level = 128
im_double = im2double(original_image);
im_level = uint8(im_double * level);
imshow(im_level)
title(sprintf('%i grey levels', level))

%3
figure(4)
m = 0
var =0.1
im_gauss_noise = imnoise(original_image,'gaussian',m,var);
imshow(im_gauss_noise)
title(sprintf('Image with gaussian noise (m = %f, var = %f)', m, var))




