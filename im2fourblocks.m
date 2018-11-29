function [image_block] = im2block32(I)
    I1=I(1:size(I,1)/2,1:size(I,2)/2,:);
    I2=I(size(I,1)/2+1:size(I,1),1:size(I,2)/2,:);
    I3=I(1:size(I,1)/2,size(I,2)/2+1:size(I,2),:);
    I4=I(size(I,1)/2+1:size(I,1),size(I,2)/2+1:size(I,2),:);
    image_array = [I1 I2 I3 I4];
    image_block = I
end