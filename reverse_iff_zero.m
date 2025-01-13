function reverse=reverse_iff_zero(B,N,A,i,j)
reverse=0;
if N(j)<B(i) && A(i,j)~=0 && all(A(i,intersect(find(N<B(i)),find(N>N(j))))==0)
    invalid=0;
    for l=intersect(find(N<B(i)),find(N>0))
        if any(A(B<N(l),l)~=0)
            invalid=1;
            break
        end
    end
    if invalid==0
        reverse=1;
    end
end

end