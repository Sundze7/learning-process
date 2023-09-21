close all; clear all;clc
disp('Convert the grayscale image to the pseudo-color image1');
X=imread('Yello_Python.JPG','jpeg'); % Read image, provided by the instructor
Y=rgb2gray(X); %color image to the grayscale conversion
% Apply pseudo-color functions using sinusoids
C_r=10; % period for the red channel
P_r=0; % Phase change for the red channel
C_b=100; % period for the blue channel
P_b=60; % Phase change for the blue channel
C_g=900; % period for the green channel
P_g=30; % Phase change for the green channel
r=abs(sin(2*pi*[-P_r:255-P_r]/C_r));
b=abs(sin(2*pi*[-P_b:255-P_b]/C_b));
g=abs(sin(2*pi*[-P_g:255-P_g]/C_g));
figure, subplot(3,1,1);plot(r,'r');grid;ylabel('R value')
subplot(3,1,2);plot(g,'g');grid;ylabel('G value');
subplot(3,1,3);plot(b,'b');grid;ylabel('B value');
%%%%%%
map=[r;g;b;]'; % Construct the color map
%%%%%%%%%%
figure, 
subplot(2,1,1);
imshow(X);
title('Original RGB image');
subplot(2,1,2);
imshow(Y);
title('The Grayscale version');
figure,
imshow(Y,map); % Display the pseudo-color image
title('The Pseudo-color version');