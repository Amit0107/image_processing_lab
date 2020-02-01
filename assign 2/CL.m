clc;
a=imread('image.png');  
I = zeros(720,1280);
for i=1:1:720
    for j=1:1:1280
        if(a(i,j)==195)
            I(i,j)=0;
        else
            I(i,j)=1;
        end
    end
end            
fig=0;
r = zeros(720,1280);
figure,imtool(a)
for i=1:1:720
    for j=1:1:1280
        if(I(i,j)==1)
                if(I(i-1,j)==0 && I(i,j-1)==0)
                    fig=fig+1;
                    r(i,j)=fig;
                elseif(I(i-1,j)==1 && I(i,j-1)==1)
                    if(r(i-1,j)==r(i,j-1))
                        r(i,j)=r(i-1,j);
                    else
                        fig=fig-1;
                         r(i,j)=r(i-1,j);
                         for k=1:1:i
                             for l=1:1:j
                                 if(r(k,l)==r(i,j-1))
                                     r(k,l)=r(i-1,j);
                                 end
                             end
                         end
                    end
                elseif(I(i-1,j)==1)
                        r(i,j)=r(i-1,j);
                elseif(I(i,j-1)==1)
                        r(i,j)=r(i,j-1);    
                end
         end
     end
end
figure,imtool(r)figure,image(r,'CDataMapping','scaled')