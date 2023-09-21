N=5; % define size of Gaussian mask
sigma = 2; %define sigma

%Generate Gaussian mask
ind = -floor(N/2) : floor(N/2);
[X Y] = meshgrid(ind, ind);
h = exp(-(X.^2 + Y.^2)/(2*sigma*sigma));

%Normaliz so that the total area (sum of all weights) is 1
h = h/sum(h(:));

%convert filter into a colunm vector
h = h(:);

%Image Filtering
I = imread('Yello_Python.JPG');
I = im2double(I);
I_pad = padarray(I, [floor(N/2) floor(N/2)]);
C = im2col(I_pad, [N N], 'sliding');
C_filter = sum(bsxfun(@times, C, h), 1);
out = col2im(C_filter, [N N], size(I_pad), 'sliding');