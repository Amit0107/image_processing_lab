%%histogram specification%
a = imread('tire.tif');
b = imread('Lenna.png');
figure,

subplot(3,2,1);
imshow(a);
title('Input Image');
subplot(3,2,2);imshow(b);
title('Specified Image');

[r1,c1] = size(a);
histimg1 = zeros(r1,c1);
output = zeros(r1,c1);
[r2,c2] = size(a);
histimg2 = zeros(r2,c2);

f1=zeros(256,1);f2=zeros(256,1);
p1=zeros(256,1);p2=zeros(256,1);
q=zeros(256,1); h=zeros(256,1);

for j=1:c1
    for i=1:r1
        f1((a(i,j))+1) = f1((a(i,j))+1) + 1;
    end
end
for j=1:c2
    for i=1:r2
        f2((b(i,j))+1) = f1((b(i,j))+1) + 1;
    end
end

p1(1) = f1(1);  p2(1) = f2(1);

subplot(3,2,3);
bar(f1)
title('Histogram of input Image');
subplot(3,2,4);bar(f2)
title('Histogram of specified Image');

for a=2:1:256
    p1(a)=p1(a-1)+f1(a);
    p2(a)=p2(a-1)+f2(a);
end

for a=1:1:256
    p1(a)=round((p1(a)/p1(256))*256);
    p2(a)=round((p2(a)/p2(256))*256);
end

for a=1:1:256
    for b=1:1:256
        if(p1(a)==p2(b))
            q(a)=b;
            break;
        elseif b==256
            val=256;
             for t=1:1:256 
                 if((p1(a)-p2(t))>0 && (p1(a)-p2(t))<val)
                    val=p1(a)-p2(t);
                    q(a)=t;
                 end
             end
        end
    end
end

for j=1:c1
    for i=1:r1
        output(i,j) = q(a(i,j)+1);
    end
end
for j=1:c1
    for i=1:r1
        h((output(i,j))+1) = h((output(i,j))+1) + 1;
    end
end

subplot(3,2,5);imshow(uint8(output));
title('OUTPUT IMAGE');
subplot(3,2,6);bar(h)
title('Histogram of output Image');