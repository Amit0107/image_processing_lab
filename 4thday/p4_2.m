%adaptive median filter%
a=imread('eight.tif');
figure,
subplot(3,1,1)
imshow(a)
title('Original');
a1=imnoise(a);
imadmed=a1;
subplot(3,1,2);imshow(a1)
title('Salt and Pepper noise');
smax=7;
s=3;
[m,n]=size(a);

if s==3
    x=1;
    A=zeros(s*s);
elseif s==5
    x=2;
    A=zeros(s*s);
elseif s==7
    x=3;
    A=zeros(s*s);
end

for i=4:1:m-3
    for j=4:1:n-3
        b=a1(i,j);
        imadmed(i,j)=p4_2_func(b,s,i,j,imadmed,smax);   
    end
end
subplot(3,1,3);imshow(imadmed)
title('Adaptive Median Filtering');
        
            
                