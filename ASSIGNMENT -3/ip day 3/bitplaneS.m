i=imread('pout.tif');
a=bitget(i,1);
figure,
subplot(2,2,1);imshow(logical(a));title('Bit plane 1');

a=bitget(i,2);
subplot(2,2,2);imshow(logical(a));title('Bit plane 2');

a=bitget(i,3);
subplot(2,2,3);imshow(logical(a));title('Bit plane 3');

a=bitget(i,4);
subplot(2,2,4);imshow(logical(a));title('Bit plane 4');

a=bitget(i,5);
figure,
subplot(2,2,1);imshow(logical(a));title('Bit plane 5');

a=bitget(i,6);
subplot(2,2,2);imshow(logical(a));title('Bit plane 6');

a=bitget(i,7);
subplot(2,2,3);imshow(logical(a));title('Bit plane 7');

a=bitget(i,8);
subplot(2,2,4);imshow(logical(a));title('Bit plane 8');

 