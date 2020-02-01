% bilinear shriking 
a= imread('man.jpg');
a1 = zeros(size(a,1),size(a,2)/2);
a2 = zeros(size(a,1)/2,size(a,2)/2);
for i=1:1:size(a1,1)
    for j=1:1:size(a1,2)
        if((2*j+1) < size(a,2))
         a1(i,j)=(a(i,2*j)+ a(i,2*j+1))/2;
        else
          a1(i,j)=a(i,2*j);  
        end
    end
end
a1=uint8(a1);
 
for i=1:1:size(a2,1)
    for j=1:1:size(a2,2)
         if((2*i+1) < size(a1,1))
             a2(i,j)=(a1(2*i,j)+ a1(2*i+1,j))/2;
        else
          a2(i,j)=a1(2*i,j); 
         end
    end
end
a2=uint8(a2);
imshow(a2);
