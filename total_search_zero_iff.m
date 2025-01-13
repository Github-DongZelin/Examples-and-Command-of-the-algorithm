function total_cobasis_zero_iff=total_search_zero_iff(B,N,A)
d=length(N)-1;
i = 1;
j = 2;
layer=0;

total_cobasis_zero_iff=[];
lexmin=lexmin_without_obj(B,N,A);
if lexmin==1
    total_cobasis_zero_iff=[total_cobasis_zero_iff;N(2:end)];
end
while j<=length(N)+1
    if j<=length(N)
        reverse=reverse_iff_zero(B,N,A,i,j);
        if reverse==1 && layer==d-1
            [tempB,tempN,tempA]=pivotrowcolumn(B,N,A,i,j);
            lexmin=lexmin_without_obj(tempB,tempN,tempA);
            if lexmin==1
                total_cobasis_zero_iff=[total_cobasis_zero_iff;tempN(2:end)];
            end
            [i,j]=increment_without_obj(B,i,j);
        elseif reverse==1 && layer<d-1
            [B,N,A]=pivotrowcolumn(B,N,A,i,j);
            layer=layer+1;
            lexmin=lexmin_without_obj(B,N,A);
            if lexmin==1
                total_cobasis_zero_iff=[total_cobasis_zero_iff;N(2:end)];
            end
            i=1;j=2;
        else
            [i,j]=increment_without_obj(B,i,j);
        end
    else 
        [i0,j0]=selectzero(B,N,A);
        if isempty(i0)==0 && isempty(j0)==0
            r=B(i0);s=N(j0);
            [B,N,A]=pivotrowcolumn(B,N,A,i0,j0);
            i=find(B==s);j=find(N==r);
            [i,j]=increment_without_obj(B,i,j);
            layer=layer-1;
        else
            break
        end
    end
end

end