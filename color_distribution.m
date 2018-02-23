function cd = color_distribution(imagePatch, m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   m : Number of bins

patch_height = size(imagePatch,1);
patch_width = size(imagePatch, 2);
max_dist = sqrt((patch_height/2)^2 + (patch_width/2)^2);
bins = zeros(1,m);

for r = 1:patch_height
    for c = 1:patch_width
        % distance from pixel position to center
        d = sqrt((r - patch_height/2)^2 + (c - patch_width/2)^2);
        % kernal function 
        k = (1/2*pi)*(1-d/max_dist);
        % bin location
        loc = ceil(imagePatch(r,c)/(256/m));
        if loc == 0
            loc = 1;
        end
        % bin values
        bins(1,loc) = bins(1,loc) + k;
    end
end

cd = bins / sum(bins);


end

