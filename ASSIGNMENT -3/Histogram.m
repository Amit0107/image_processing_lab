clear all;
clc;
close all;
a=imread('pout.tif');
b=zeros(1,256);
[r,c]=size(a);

for x=1:1:r
               for y=1:1:c
                       if a(x,y)<1
                           continue;
                       else
                        t=a(x,y);
                       end
                       b(t)=b(t)+1;
               end
end

subplot(1,2,1);
imshow(uint8(a));
title('Original Image');

subplot(1,2,2);
bar(b);
title('Histogram of image');

numofPixels = size(a,1) * size(a,2);
H = uint8(zeros(size(a,1),size(a,2)));
freq = zeros(256,1);
probf = zeros(256,1);
probc = zeros(256,1);
cum = zeros(256,1);
output = zeros(256,1);

for i = 1:size(a,1)
    for j = 1:size(a,2)
        value = a(i,j);
        freq(value+1) = freq(value+1) + 1;
        probf(value+1) = freq(value+1)/numofPixels;
    end
end

sum = 0;
noofBins = 255;
 for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofPixels;

   output(i)=round(probc(i)*noofBins);

end

for i=1:size(a,1)

    for j=1:size(a,2)

            H(i,j)=output(a(i,j)+1);

    end

end
figure,
subplot(2,1,1);
imshow(H);
title('Image after Histogram Equalization');

subplot(2,1,2);
imshow(histeq(a));
title('Image using HistEq');
