function [image_block] = image2block(image, x1, x2, y1, y2)
    image_block = image(x1:x2, y1:y2);
end