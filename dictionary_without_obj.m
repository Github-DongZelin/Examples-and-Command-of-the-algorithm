function [B,N,A]=dictionary_without_obj(A_)
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
B=sym([setdiff(1:n,N(2:end))]);

A=[b(B),zeros(n-d,d)]-A0(B,:)*inv(A_N)*[b(N(2:end)),-eye(d)];
A=simplify(A);

N=sym([0,1:size(A_,2)-1]);
B=sym(size(A_,2))+sym(0:length(B)-1);
end