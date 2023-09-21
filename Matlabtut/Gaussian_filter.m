%Generate horizontal and vertical co-ordinates,
%where the origin is in the middle
ind = -floor(N/2) : floor(N/2);
[X Y] = meshgrid(ind, ind);

%Create guassian Mask
h = exp(-(X.^2 + Y.^2)/(2*sigma*sigma));

%Normalize so that the total area(sum of all weights) is 1
h = h/sum(h(:));