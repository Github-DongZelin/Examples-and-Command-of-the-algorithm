function [i,j]=increment_with_obj(B,i,j)
i=i+1;
if i==length(B)
    j=j+1;i=1;
end
end