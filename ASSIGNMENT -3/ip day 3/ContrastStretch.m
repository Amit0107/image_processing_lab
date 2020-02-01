%clear all;
a=imread('pout.tif');

subplot(1,2,1);
imshow(a);
b=im2double(a);
[m,n]=size(a);
for i=1:m-1
for j=1:n-1
    r=b(i,j);
    if find(0<r & r<100)
        s(i,j)=r/2;
    elseif find(r>=100 & r<150)
        s(i,j)=1.5*r;
    else find(r>=150)
        s(i,j)=0.5*r;
%s(i,j)=a(i,j)^2;
    end;
end;
end;
subplot(1,2,2);
imshow(s);
