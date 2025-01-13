function adjacent=adjacent_cobasis(B,N,A)
adjacent={};

for j=2:length(N)
    ind0=find(A(:,j)~=0);
    ratio=A(ind0,1)./A(ind0,j);
    positive_min=min(ratio(ratio>0));
    negative_min=max(ratio(ratio<0));
    positive_min_ind=[];negative_min_ind=[];
    if isempty(positive_min)==0
        positive_min_ind=ind0(A(ind0,1)./A(ind0,j)==positive_min);
    end
    if isempty(negative_min)==0
        negative_min_ind=ind0(A(ind0,1)./A(ind0,j)==negative_min);
    end

    if isempty(union(positive_min_ind,negative_min_ind))==0
        for i=reshape(union(positive_min_ind,negative_min_ind),1,[])
            adjN=N;
            adjN(j)=B(i);
            adjN=sort(adjN);
            adjacent=[adjacent;{adjN}];
        end
    end
end

end