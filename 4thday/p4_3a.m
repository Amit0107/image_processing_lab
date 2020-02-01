clc;
clear all;
close all;
I=imread('pout.tif');
a=double(I);
hist1=zeros(1,256);
[m,n]=size(a);
for i=1:m
    for j=1:n
        hist1(a(i,j)+1)=hist1(a(i,j)+1)+1;
    end
end
pdf=hist1/(m*n);
cdf(1)=pdf(1);
for k=2:256
    cdf(k)=cdf(k-1)+pdf(k);
end
length=256;
ri=imread('eight.tif');
rd=double(ri);
[m,n]=size(rd);
length1=m*n;
r=reshape(rd,length1,1);
rpdf=hist(r, [0:length-1]);
rpdf=rpdf/length1;
sk=rpdf*triu(ones(length));
zk=cdf;
mapping=zeros(256);
z0=zeros(m,n);
for q=1:length
    for p=mapping(q)+1:length
        if(zk(p)>=sk(q))
            mapping(q)=p;
            list=find(rd==q-1);
            a=size(list);
            z0(list)=p;
            break;
        end
    end
end
z0=uint8(z0);
subplot(3,2,1);imshow(I);title('input image');
subplot(3,2,2);imhist(I);title('input image histogram');
subplot(3,2,3);imshow(ri);title('specific image');
subplot(3,2,4);imhist(ri);title('specific image histogram');
subplot(3,2,5);imshow(z0);title('result image');
subplot(3,2,6);imhist(z0);title('result image histogram');