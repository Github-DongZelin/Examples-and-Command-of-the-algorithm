function [B,N,A]=dictionary_with_obj(A_)
A0=A_(:,1:end-1);b=A_(:,end);
A_N=[];N=0;
[n,d]=size(A0);

for i=1:n
    if rank(A0(1:i,:))>rank(A0(1:i-1,:))
        A_N=[A_N;A0(i,:)];
        N=[N,i];
        if rank(A_N)==d
            break
        end 
    end
end
N=sym(N);
B=sym([setdiff(1:n,N(2:end)),n+1]);

A=[[b(B(1:end-1)),zeros(n-d,d)]-A0(B(1:end-1),:)*inv(A_N)*[b(N(2:end)),-eye(d)];0,-ones(1,d)];
A=simplify(A);
for i=1:size(A,1)
    if A(i,1)<0
        A(i,:)=-A(i,:);
    end
end
end