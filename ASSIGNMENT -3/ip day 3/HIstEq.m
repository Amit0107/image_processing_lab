%
a=imread('pout.tif')';
n=size(a,1)*size(a,2);
figure,
title('Input image')
imshow(a);
b=bar(a);
%c=histeq(a);
%imshow(c);
Result=uint8(zeros(size(a,1),size(a,2)));

f=zeros(256,1);%f=frequency

pf=zeros(256,1);% probability

pc=zeros(256,1);

cummulative=zeros(256,1);

output=zeros(256,1);
for i=1:size(a,1)

    for j=1:size(a,2)

        r=a(i,j);

        f(r+1)=f(r+1)+1;

        pf(r+1)=f(r+1)/n;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated. 

for i=1:size(pf)

   sum=sum+f(i);

   cummulative(i)=sum;

   pc(i)=cummulative(i)/n;

   output(i)=round(pc(i)*no_bins);

end

for i=1:size(a,1)

    for j=1:size(a,2)
            Result(i,j)=output(a(i,j)+1);

    end

end

figure,imshow(Result);


title('Histogram equalization');
z=bar(Result);
