%%% Basic Images of DCT for 8x8 size %%%  
clear all;
clc;
for i=0:15
      for j=0:15 
          if j==0 
              a = sqrt(1/16);
          else
              a = sqrt(2/16);
          end
           I(i+1,j+1) = a * cos((pi*(2*i+1)*j)/32);
      end 
end
k = 1;
for i=1:1:16
    for j=1:1:16
        img = I(:,j)*I(i,:);
    
        subplot(16,16,k),imshow(img);
        k = k+1; 
    end 
end 
