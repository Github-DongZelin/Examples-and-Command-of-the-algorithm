function reverse=reverse_necess_cc(B,N,A,i,j)
reverse=0;
if A(i,1)>0 && A(i,j)>0 && all(A(i,intersect(N<B(i),N>0))>=0)
    reverse=1;
end

if A(end,j)<0 && A(i,j)<0 && all(A(B<N(j),j)<=0)
    reverse=1;
end

end