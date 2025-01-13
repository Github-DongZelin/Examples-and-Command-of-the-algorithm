function total_cobasis_adjacent_moss=total_search_adjacent_moss(B,N,A)
S={B,N,A};total_cobasis_adjacent_moss=[]; 
row=1;

while row<=size(S,1)

[B,N,A]=S{row,:}; 
lexmin=lexmin_without_obj(B,N,A); 
if lexmin==1
    total_cobasis_adjacent_moss=[total_cobasis_adjacent_moss;N(2:end)];
end

adjacent=adjacent_cobasis(B,N,A); 
n=size(adjacent,1);
for i=1:n 
    ind1=size(vertcat(S{:,2}),1);
    ind2=size(unique(vertcat(S{:,2},adjacent{i}),"rows"),1);
    if ind2-ind1~=0
        [adjB,adjN,adjA]=pivotrowcolumn(B,N,A,find(B==setdiff(adjacent{i},N)),find(N==setdiff(N,adjacent{i})));
        S=[S;{adjB,adjN,adjA}];
    end
end
row=row+1;
end

end