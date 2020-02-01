a = imread('man.jpg');
a = imcrop(a,[0 0 225 225]);
a1 = zeros(size(a,1),2*size(a,2));
a2 = zeros(2*size(a,1),2*size(a,2));
for i=1:1:size(a,1)
    for j=1:1:size(a,2)-1
       a1(i,2*j-1)=a(i,j);
       if(j == size(a,2))
       a1(i,2*j)=a(i,j);
       else
       a1(i,2*j)=(a(i,j)+ a(i,j+1))/2;
       end
    end
end
a1=uint8(a1);
 
for i=1:1:size(a1,1)
    for j=1:1:size(a1,2)
       a2(2*i-1,j)=a1(i,j);
       if(i == size(a1,1))
       a2(2*i,j)=a1(i,j);
       else
       a2(2*i,j)=(a1(i,j)+ a1(i+1,j))/2;
       end
    end
end
a2=uint8(a2);
imshow(a2);
