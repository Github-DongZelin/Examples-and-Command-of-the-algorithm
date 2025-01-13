function reversecc=reverse_iff_cc(B,N,A,i,j)
reversecc=0;
if A(i,1)>0 && A(i,j)>0 && all(A(i,find(N(2:end)<B(i))+1)>=0)
    B0=find(B<N(j)); % those in B and less than N(j)=r.
    N0=find(N<N(j));N0(1)=[]; % those in N and less than N(j)=r, exclude the column of x_g.
    if all((A(B0,1)*A(i,j)>=A(B0,j)*A(i,1))) && all(A(end,j)*A(i,N0)>=A(end,N0)*A(i,j)) % if (a1)(a2) satisfies.
        if B(i)<N(j) % if (a3) satisfies.
            if A(end,j)<=0
                reversecc=1;
            end
        else
            reversecc=1;
        end
    end
end

if A(end,j)<0 && A(i,j)<0 && all(A(B(1:end-1)<N(j),j)<=0)
    B0=find(B<B(i)); % those in B and less than B(i)=s.
    N0=find(N<B(i));N0(1)=[]; % those in N and less than B(i)=s, exclude the column of x_g.
    if all(A(B0,j)*A(i,1)>=A(B0,1)*A(i,j)) && all(A(end,N0)*A(i,j)>=A(end,j)*A(i,N0)) % if (b1)(b2) satisfies.
        if N(j)<B(i) % if (b3) satisfies.
            if A(i,1)>=0
                reversecc=1;
            end
        else
            reversecc=1;
        end
    end
end
end
