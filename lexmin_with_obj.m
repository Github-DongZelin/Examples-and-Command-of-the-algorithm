function lexmin=lexmin_with_obj(B,N,A)
lexmin=1;
if isempty(find(A(1:end-1,1)==0, 1))==0
    for i=reshape(find(A(1:end-1,1)==0),1,[])
        N0=N(A(i,:)~=0);
        if any(N0<B(i))==1
            lexmin=0;
        end
    end
end
end