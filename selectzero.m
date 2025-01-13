function [i,j]=selectzero(B,N,A)
i=[];j=[];
for j=2:length(N)
    if any(A(B<N(j),j)~=0)
        i=find(A(B<N(j),j)~=0,1);
        break
    end
end
end