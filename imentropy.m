function [entropy] = imentropy(image)
    [count, ~] = imhist(image);
    [w, h] = size(image);
    p = count / (w * h);
    
    entropy = 0;
    for i = 1:length(p)
        if (p(i) ~= 0)
            entropy = entropy - p(i) * log2(p(i));
        end
    end
end