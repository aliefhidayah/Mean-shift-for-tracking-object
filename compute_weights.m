function weights = compute_weights(imPatch, qTarget, pCurrent, Nbins)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

patch_height = size(imPatch,1);
patch_width = size(imPatch, 2);
weights = zeros(patch_height, patch_width);

for r = 1:patch_height
    for c = 1:patch_width
        loc = ceil(imPatch(r,c)/(256/Nbins));
        if loc == 0
            loc = 1;
        end
        weights(r,c) = sqrt(qTarget(loc)/(pCurrent(loc)));
    end
end

end

