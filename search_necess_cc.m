function output_cobasis=search_necess_cc(B,N,A)

i = 1;
j = 2;

output_cobasis=[];
lexmin=lexmin_with_obj(B,N,A);
if lexmin==1
    output_cobasis=[output_cobasis;N(2:end)];
end
while j<=length(N)+1
    if j<=length(N)
        reverse=reverse_necess_cc(B,N,A,i,j);
        if reverse==1
            [tempB,tempN,tempA]=pivotrowcolumn(B,N,A,i,j);
            [temp1,temp2]=selectcc(tempB,tempN,tempA);
            if B(i)==tempN(temp2) && N(j)==tempB(temp1)
                B=tempB;N=tempN;A=tempA;
                i=1;j=2;
                lexmin=lexmin_with_obj(B,N,A);
                if lexmin==1
                    output_cobasis=[output_cobasis;N(2:end)];
                end
            else
                [i,j]=increment_with_obj(B,i,j);
            end
        else
            [i,j]=increment_with_obj(B,i,j);
        end
    else 
        [i0,j0]=selectcc(B,N,A);
        if isempty(i0)==0 && isempty(j0)==0
            r=B(i0);s=N(j0);
            [B,N,A]=pivotrowcolumn(B,N,A,i0,j0);
            i=find(B==s);j=find(N==r);
            [i,j]=increment_with_obj(B,i,j);
        else
            break
        end
    end
end

end