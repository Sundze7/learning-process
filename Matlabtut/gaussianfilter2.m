%Read image 
Img = imread('Yello_Python.JPG');
A = imnoise(Img, 'Gaussian', 0.04,0.003);
%image with noise
figure,imshow(A)

I = double(A);
 %Design the Gaussian Kernel
 sigma = 1.76;
 %window size
 sz = 5;
 [X, Y] = meshgrid(-sz:sz, -sz:sz);
 
 M = size(X, 1)-1;
 N = size(Y, 1)-1;
 Exp_comp = -(X.^2 + Y.^2)/(2*sigma*sigma);
 kernel = exp(EXP_comp)/(2*pi*sigma*sigma);
 
 %Initialize
 Output = zeros(size(I));
 %Pad the vector with zeros
 I = padarray(I,[sz sz]);
 
 %convulution
 for i = 1:size(I,1)-M
     for j=1:size(I,2)-N
         temp = I(i:i+M, j:j+M).*kernel;
         Output(i,j) = sum(temp(:));
     end
 end
 
 %image without noise 
 Output = uint8(Output);
 figure,imshow(Output);