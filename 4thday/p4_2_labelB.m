function [med]=p4_2_labelB(zmin,zmax,zxy,s,A)
    B1=zxy-zmin;
    B2=zxy-zmax;
    if(B1>0 && B2<0)
       med=zxy;
    else
       med=A(ceil((s*s)/2));
    end
end