%crop with code
I1 = imread('man.jpg');
 
I2 = zeros(200,200);
for i=1:1:200
    for j=1:1:200
        I2(i,j)= I1(i+5,j+5);
    end
end
I2 = uint8(I2);
imshow(I2);
