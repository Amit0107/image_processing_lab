%nearest neighbour shrinking .
I1 = imread('man.jpg');
I11 = zeros(size(I1,1),size(I1,2)/2);
I12 = zeros(size(I11,1)/2,size(I11,2));
for i=1:1:size(I11,1)
    for j=1:1:size(I11,2)
       I11(i,j)=I1(i,2*j);
    end
end
I11=uint8(I11);
 
for i=1:1:size(I12,1)
    for j=1:1:size(I12,2)
       I12(i,j)=I11(2*i,j);
    end
end
I12=uint8(I12);
imshow(I12);
