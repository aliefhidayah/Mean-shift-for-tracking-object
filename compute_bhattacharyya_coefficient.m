function k = compute_bhattacharyya_coefficient(p,q)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   q: Target model
%   p: Current color model 

if size(q) ~= size(p)
    error('The size of Target model and Current model must be the same');
end

% rho = sqrt(q(1)*p(1));
% for n=2:size(q,2)
%     rho = rho + sqrt(q(n)*p(n));
% end
% 
% k = rho;
k = sum(sqrt(p .* q));
end

