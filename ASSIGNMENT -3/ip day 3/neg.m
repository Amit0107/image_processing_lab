a=imread('pout.tif');
subplot(1,2,1);
imshow(a);
title('Original Image');
[m,n]=size(a);
for i=1:m-1
for j=1:n-1
s(i,j)=256-1-a(i,j);
end;
end;
subplot(1,2,2);
imshow(s);
title('Negative Image');