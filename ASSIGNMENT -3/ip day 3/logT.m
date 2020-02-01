a=imread('pout.tif');
subplot(1,2,1);
imshow(a);
b=im2double(a);
[m,n]=size(a);
for i=1:m-1
for j=1:n-1
r=b(i,j);
c(i,j)=log(1+r);
end;
end;
subplot(1,2,2);
imshow(c);
