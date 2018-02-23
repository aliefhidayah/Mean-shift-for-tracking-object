function z = compute_meanshift_vector(imPatch, weights)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

patch_height = size(imPatch,1);
patch_width = size(imPatch, 2);

sum1 = 0;
sum2 = sum(sum(weights));
for r = 1:patch_height
    for c = 1:patch_width
        sum1 = sum1 + [r,c]*weights(r,c);
    end
end

shift = sum1./sum2;
z =  shift;
end

