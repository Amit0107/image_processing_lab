%rotation 
image = imread('pout.tif'); %give a grayscale image
 
[m,n]=size(image);
angle = 45; %set angle here
 
rad = 2*pi*angle/360;
 
m_m = ceil(m*abs(cos(rad))+n*abs(sin(rad)));
n_n = ceil(m*abs(sin(rad))+n*abs(cos(rad)));
 
r1 = uint8(zeros(([m_m m_m])));
 
a_mid = ceil(m/2);
b_mid = ceil(n/2);
 
a1_mid = ceil((size(r1,1))/2);
b1_mid = ceil((size(r1,2))/2);
 
for i=1:m_m
    for j=1:n_n
        a=(i-a1_mid)*cos(rad)+(j-b1_mid)*sin(rad);
        b=-(i-a1_mid)*sin(rad)+(j-b1_mid)*cos(rad);
        a=round(a)+a_mid;
        b=round(b)+b_mid;
 
        if(a>=1 && b>=1 && a<=m && b<=n)
            r1(i,j)=image(a,b);
        end
 
    end
end
imshow(image);
title('Original Image');
figure;imshow(r1);
title('Rotated Image');
