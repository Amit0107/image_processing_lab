function [med]=p4_2_func(zxy,s,i,j,im2,smax)
        if s==3
            x=1;
            A=zeros(s*s);
        elseif s==5
            x=2;
            A=zeros(s*s);
        elseif s==7
            x=3;
            A=zeros(s*s);
        end

        val=1;
        for a=i-x:1:i+x
            for b=j-x:1:j+x
                A(val)=im2(a,b);
                val=val+1;
            end
        end
        A=sort(A);
        zmed=A(ceil((s*s)/2));
        zmin=A(1);
        zmax=A(s*s);
        med=p4_2_labelA(zmed,zmin,zmax,zxy,A,s,i,j,smax,im2);
end