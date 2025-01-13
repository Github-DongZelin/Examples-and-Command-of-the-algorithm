function [i,j]=selectcc(B,N,A)

B0=B(A(1:end-1,1)<0);
N0=N(2:end);N0=N0(A(end,2:end)>0);

i0=min(union(B0,N0));

if isempty(i0)==1
    i=[];j=[];
else
    if ismember(i0,B0)==1
        r=i0;
        s=min(N(A(B==r,:)>0));
    else
        s=i0;
        r=min(B(A(:,N==s)<0));
    end
    j=find(N==s);i=find(B==r);
end
end