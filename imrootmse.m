% Calculate the root mean square error of an image
function [rootmse] = imrootmse(original,new)
    mse = immse(original, new);
    rootmse = sqrt(mse);
end