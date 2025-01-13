function vertexes=search_ifandonlyif_cc(B,N,A)
vertexes=[];

lexmin=lexmin_with_obj(B,N,A);
if lexmin==1
    vertexes=[vertexes;N(2:end)];
end

j=2;i=1;
while j<=length(N)+1
    if j<=length(N)
        reverse=reverse_iff_cc(B,N,A,i,j);
        if reverse==1
            [B,N,A]=pivotrowcolumn(B,N,A,i,j);
            lexmin=lexmin_with_obj(B,N,A);
            if lexmin==1
                vertexes=[vertexes;N(2:end)];
            end
            j=2;i=1;
        else
            [i,j]=increment_with_obj(B,i,j);
        end
    else
        [i,j]=selectcc(B,N,A);
        if isempty(i)==0 && isempty(j)==0
            Bi=B(i);Nj=N(j);
            [B,N,A]=pivotrowcolumn(B,N,A,i,j);
            i=find(B==Nj);j=find(N==Bi);
            [i,j]=increment_with_obj(B,i,j);
        else
            break
        end
    end
end
end
