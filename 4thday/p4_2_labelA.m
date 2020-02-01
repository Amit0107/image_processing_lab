function [med] = p4_2_labelA(zmed,zmin,zmax,zxy,A,s,i,j,smax,im2)
        A1=zmed-zmin;
        A2=zmed-zmax;
        if (A1>0 && A2<0)
            med=p4_2_labelB(zmin,zmax,zxy,s,A);
        else
            s=s+2;
            if(s<=smax)
                med=p4_2_func(zxy,s,i,j,im2,smax);
            else
               med=zxy; 
            end
            
        end
end