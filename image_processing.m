clc
clf
clear

% 1
figure(1)
original_image = imread('standard_test_images/livingroom.tif');
imshow(original_image)
title('Living Room')
[x_size, y_size] = size(original_image)
info = imfinfo('standard_test_images/livingroom.tif');
bit_depth = info.BitDepth;
space_in_bit = x_size * y_size * bit_depth
space_in_byte = space_in_bit / 8


% 2
figure(2)
BW_image = imbinarize(original_image);
imshow(BW_image)
title('Black and White')

% 2.1
figure(3)
level = 128;
im_double = im2double(original_image);
im_level = uint8(im_double * level);
imshow(im_level)
title(sprintf('%i grey levels', level))


% 3.1
% Generate an image with gaussian noise (m, var) overlapped
figure(4)
m = 0;
var =0.1;
im_gauss_noise = imnoise(original_image,'gaussian',m,var);
imshow(im_gauss_noise)
title(sprintf('Image with gaussian noise (m = %f, var = %f)', m, var))

%3.2
% Generate an image with salt & pepper noise overlapped
figure(5)
probability = 0.05;
im_salt_and_pepper = imnoise(original_image,'salt & pepper',probability);
imshow(im_salt_and_pepper)
title(sprintf('Image with salt & pepper noise (%f)',probability))


% 4
% Calculate the root mean square error of an image
im_edited = im_level;
rootmse = imrootmse(original_image,im_edited)


% 5
% Calculate the entropy of an image
figure(6)
original_image = imread('standard_test_images/mandril_color.tif');
imshow(original_image);
title('Mandril color')
figure(7)
im_grey = rgb2gray(original_image);
imshow(im_grey);
title('Mandril gray')
image_entropy = entropy(im_grey)
image_entropy_func = imentropy(im_grey)


% 6
% Divide an image into 4 blocks of resolution 32x32
figure(7)
subplot(2,2,1)
image_block_1 = image2block(original_image, 1, 32, 1, 32);
imshow(image_block_1);
subplot(2,2,2)
image_block_2 = image2block(original_image, 33, 64, 33, 64);
imshow(image_block_2);
subplot(2,2,3)
image_block_3 = image2block(original_image, 65, 96, 65, 96);
imshow(image_block_3);
subplot(2,2,4)
image_block_4 = image2block(original_image, 97, 128, 97, 128);
imshow(image_block_4);

% 6.1
% plot the istograms of the previous subplot
figure(8)
subplot(2,2,1)
hist1 = imhist(image_block_1);
bar(hist1)
subplot(2,2,2)
hist2 = imhist(image_block_2);
bar(hist2)
subplot(2,2,3)
hist3 = imhist(image_block_3);
bar(hist3)
subplot(2,2,4)
hist4 = imhist(image_block_4);
bar(hist4)











