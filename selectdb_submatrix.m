function [i,j]=selectdb_submatrix(B,N,A)

B_=find(A(1:end-1,2)==0); % find the row of submatrix

i=B_(A(B_,1)<0); % find the smallest positive entry in col of g'
temp=find(A(i,3:end)>0)+2;% find the positive entry in the row i
if isempty(temp)==0
    [~,j]=min(-A(end,temp)./A(i,temp)); j=temp(j); % find the smallest entry attain minimal ratio
else
    j=1;
end

end