clc;
clear all;
close all;

A = imread('pout.tif');

B = bitget(A,1);
figure,
subplot(3,3,1);
imshow(logical(B));
title('Bitplane 1');

B = bitget(A,2);
subplot(3,3,2);
imshow(logical(B));
title('Bitplane 2');

B = bitget(A,3);
subplot(3,3,3);
imshow(logical(B));
title('Bitplane 3');

B = bitget(A,4);
subplot(3,3,4);
imshow(logical(B));
title('Bitplane 4');

B = bitget(A,5);
subplot(3,3,5);
imshow(logical(B));
title('Bitplane 5');

B = bitget(A,6);
subplot(3,3,6);
imshow(logical(B));
title('Bitplane 6');

B = bitget(A,7);
subplot(3,3,7);
imshow(logical(B));
title('Bitplane 7');

B = bitget(A,8);
subplot(3,3,8);
imshow(logical(B));
title('Bitplane 8');