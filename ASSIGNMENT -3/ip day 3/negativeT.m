
img  = imread('pout.tif'); 
img2 = 1 - im2double(img); 
figure; subplot(1,2,1); imshow(img); title('Original Image'); 
subplot(1,2,2); imshow(img2); title('Image after Negative Transform'); 