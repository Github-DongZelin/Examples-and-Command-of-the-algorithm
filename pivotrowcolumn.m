function [B, N, A] = pivotrowcolumn(B, N, A, i, j)
    C = A - (A(:, j) / A(i,j) )* A(i, :);
    C(i, :) = -A(i, :) / A(i, j); % compute the row in the pivot.
    C(:, j) = A(:, j) / A(i, j); C(i, j) = 1 / A(i, j); % compute the column the fixed entry in pivot.
    N0 = N; B0 = B;
    B(i) = N0(j); [B, I] = sort(B); % sort new B.
    N(j) = B0(i); [N, J] = sort(N); % sort new N.
    C = C(:, J); C = C(I, :); A = simplify(C); % permute the row and column of C in correspondence manner.
end