clc;
clear all;
close all;
im1=imread('eight.tif');
figure,
subplot(3,2,1);
imshow(im1);
title('Original');
im2=imnoise(im1);
immed=im2;
immin=im2;
immax=im2;
immid=im2;
subplot(3,2,2);
imshow(im2)
title('Salt and Pepper noise');

A=zeros(9);
[m,n]=size(im1);
for i=2:1:m-1
    for j=2:1:n-1
        val=1;
        for a=i-1:1:i+1
            for b=j-1:1:j+1
                A(val)=im2(a,b);
                val=val+1;
            end
        end
        A=sort(A);
        immed(i,j)=A(5);
        immin(i,j)=A(1);
        immax(i,j)=A(9);
        immid(i,j)=round((A(1)+A(9))/2);
    end
end
subplot(3,2,3);
imshow(immed);
title('Median Filtering');
subplot(3,2,4);
imshow(immin)
title('Minimum Filtering');
subplot(3,2,5);
imshow(immax)
title('Maximim Filtering');
subplot(3,2,6);
imshow(immid)
title('Mean Filtering');
        
            
                