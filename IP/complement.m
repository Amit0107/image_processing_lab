I1 = imread('man.jpg');
for i=1:1:size(I1,1)
    for j = 1:1:size(I1,2)
        I1(i,j)=255-I1(i,j);
    end
end
 
imshow(I1);
