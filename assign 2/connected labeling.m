clc;
clear all;
a=imread('image_1.png');%input image
imshow(a);
aa=im2bw(a);
b=strel('square',3);
A=aa;
p=p(1);
Label = zeros([size(A,1) size(A,2)]);
n=0;
while(~isempty(p));
    n=n+1;
    p=p(1);
x=false([size(A,1) size(a,2)]);
a(p)=1;
y=A&imdilite(x,b);
while(~isequl(x,y))
    x=y;
    y=A&imdilute(x,b);
end
pos=find(y==1);
A(pos)=0;
Label(pos)=n;
p=find(A==1);
end
imtool(Label);
I=zeros([size(A,1) size(A,2)]);
ele=find(Label==1);
I(ele)=1;
ele=find(Label==2|Label==3|Label==6|Label==7|Label==9|);
I1=zeros([size(A,1) size(A,2)]);
I(ele)=1;
RGBI=zeros([size(Label,1) size(Label,2) 3]);
R=zeros([size(Label,1) size(Label,2)]);
G=zeros([size(Label,1) size(Label,2)]);
B=zeros([size(Label,1) size(Label,2)]);
u=64;
v=255;w=128;
for i=1:n
    pos=find(Label==i);
    R(pos)=mod(i*2)*v;
    G(pos)=mod(i*5)*u;
    B(pos)=mod(i*3)*w;
end
RGBI(:,:,1)=R;
RGBI(:,:,2)=G;
RGBI(:,:,3)=B;
RGBI=uint8(RGBI);
figure;
imshow(RGBI);