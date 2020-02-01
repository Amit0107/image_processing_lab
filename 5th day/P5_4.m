clear all;
close all;
clc;
a1 = imread('tire.tif');

b1= imread('man.tif');

A = rgb2gray(a1);
B = rgb2gray(b1);
C = 2*B+ A;
dft2 = fft2(2*B);
dft1 = fft2(A);
dft3 = dft1 + dft2;
dft = fft2(C);
%c =0;
[m,n] = size(dft)
subplot(2,2,1),imshow(A), title('f1(x,y)')
subplot(2,2,2),imshow(B), title('f2(x,y)')
subplot(2,2,3),imshow(uint8(dft3)), title('F[a*f1(x,y)+b*f2(x,y)]')
subplot(2,2,4),imshow(uint8(dft)), title('a*F1(u,v)+b*F2(u,v)]') 