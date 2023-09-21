x = imread('matwork.jpg');
%imwrite(x, 'setnew', 'png');
%imtool(x);
%x(10,90);
D = rgb2gray(x)
imwrite(D, 'newimg', 'jpg')
imtool(D)
subplot(4,2,6)
imshow(x)