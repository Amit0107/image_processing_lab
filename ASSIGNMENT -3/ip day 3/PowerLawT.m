clear all;
a=imread('tire.tif');
subplot(1,2,1);
imshow(a);
b=im2double(a);
[m,n]=size(a);
for i=1:m-1
for j=1:n-1
s(i,j)=a(i,j)^2;
end;
end;
subplot(1,2,2);
imshow(s);
