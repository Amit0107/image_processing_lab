%%Logarithmic 
f=imread('pout.tif');
c=input('Enter the constant value, c = ');
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                m=double(f(x,y));
                z(x,y)=c.*log10(1+m);
        end
        end
figure,
subplot(1,2,1);
imshow(f);
title('Original Image');

subplot(1,2,2);
imshow(z);
title('Logarithmic Image');
