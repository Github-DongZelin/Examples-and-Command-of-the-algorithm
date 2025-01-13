function output_optimal_dictionary=search_optimal_dictionary(B,N,A)

A=[[ones(length(B),1)],A];
N=[-1,N];

i = 1;
j = 3;

output_optimal_dictionary={B,N(2:end),A(:,2:end)};

while j<=length(N)
if A(i,2)==0
    reverse=reverse_necess_db(B,N,A,i,j);
    if reverse==1
        [tempB,tempN,tempA]=pivotrowcolumn(B,N,A,i,j);
        [temp1,temp2]=selectdb_submatrix(tempB,tempN,tempA);
        if B(i)==tempN(temp2) && N(j)==tempB(temp1)
            B=tempB;N=tempN;A=tempA;
            i=1;j=3;
            output_optimal_dictionary=[output_optimal_dictionary;{B,N(2:end),A(:,2:end)}];
        else
            [i,j]=increment_with_obj(B,i,j);
        end
    else
        [i,j]=increment_with_obj(B,i,j);
    end
else
    [i,j]=increment_with_obj(B,i,j);
end
    if j>length(N)
        [i0,j0]=selectdb_submatrix(B,N,A);r=B(i0);s=N(j0);
        if isempty(r)==0 && isempty(s)==0
            [B,N,A]=pivotrowcolumn(B,N,A,i0,j0);
            i=find(B==s);j=find(N==r);
            [i,j]=increment_with_obj(B,i,j);
        end
    end
end

end