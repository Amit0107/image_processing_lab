%crop with function
I1 = imread('man.jpg');
I1 = imcrop(I1,[5 5 200 200]);
imshow(I1);
