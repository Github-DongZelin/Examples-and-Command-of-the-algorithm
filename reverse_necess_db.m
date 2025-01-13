function reverse=reverse_necess_db(~,~,A,i,j)
reverse=0;
temp=find(A(i,3:end)>0)+2;
if -A(end,j)/A(i,j)==min(-A(end,temp)./A(i,temp))
    reverse=1;
end
end