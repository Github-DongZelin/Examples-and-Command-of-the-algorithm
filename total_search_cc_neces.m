function total_cobasis=total_search_cc_neces(B,N,A)

output_optimal_dictionary=search_optimal_dictionary(B,N,A);
[num,~]=size(output_optimal_dictionary);
total_cobasis=[];
for i=1:num
total_cobasis=[total_cobasis;search_necess_cc(output_optimal_dictionary{i,1},output_optimal_dictionary{i,2},output_optimal_dictionary{i,3})];
end
end
