clc; 
clear all; 
close all;
f=imread('pout.tif');
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                z(x,y)=255-f(x,y);
            end
        end
figure,
subplot(1,2,1);
imshow(f);
title('Original Image');

subplot(1,2,2);
imshow(z);
title('Negative Image');
