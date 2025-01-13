function [i,j]=increment_without_obj(B,i,j)
i=i+1;
if i==length(B)+1
    j=j+1;i=1;
end
end