clc;
im1=imread('image_1.png');  
I = zeros(720,1280);
for i=1:1:720
    for j=1:1:1280
        if(im1(i,j)==195)
            I(i,j)=0;
        else
            I(i,j)=1;
        end
    end
end            
fig=0;
newimg = zeros(720,1280);
figure,imtool(im1)
for i=1:1:720
    for j=1:1:1280
        if(I(i,j)==1)
                if(I(i-1,j)==0 && I(i,j-1)==0)
                    fig=fig+1;
                    newimg(i,j)=fig;
                elseif(I(i-1,j)==1 && I(i,j-1)==1)
                    if(newimg(i-1,j)==newimg(i,j-1))
                        newimg(i,j)=newimg(i-1,j);
                    else
                        fig=fig-1;
                         newimg(i,j)=newimg(i-1,j);
                         for k=1:1:i
                             for l=1:1:j
                                 if(newimg(k,l)==newimg(i,j-1))
                                     newimg(k,l)=newimg(i-1,j);
                                 end
                             end
                         end
                    end
                elseif(I(i-1,j)==1)
                        newimg(i,j)=newimg(i-1,j);
                elseif(I(i,j-1)==1)
                        newimg(i,j)=newimg(i,j-1);    
                end
         end
     end
end
figure,imtool(newimg)
figure,image(newimg,'CDataMapping','scaled')