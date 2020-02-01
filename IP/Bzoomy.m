I1 = imread('man.jpg');
I1 = imcrop(I1,[0 0 225 225]);
I11 = zeros(2*size(I1,1),size(I1,2));
I12 = zeros(2*size(I1,1),2*size(I1,2));
for i=1:1:size(I1,1)-1
    for j=1:1:size(I1,2)
       I11(2*i-1,j)=I1(i,j);
       if(i == size(I1,1))
       I11(2*i,j)=I1(i,j);
       else
       I11(2*i,j)=(I1(i,j)+ I1(i+1,j))/2;
       end
    end
end
I11=uint8(I11);
imshow(I11);
