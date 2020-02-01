% bilinear shriking y
I1 = imread('man.jpg');
I11 = zeros(size(I1,1)/2,size(I1,2));
I12 = zeros(size(I1,1)/2,size(I1,2)/2);
for i=1:1:size(I11,1)
    for j=1:1:size(I11,2)
        if((2*i+1) < size(I1,1))
         I11(i,j)=(I1(2*i,j)+ I1(2*i+1,j))/2;
        else
          I11(i,j)=I1(2*i,j);  
        end
    end
end
I11=uint8(I11);
imshow(I11);
 
