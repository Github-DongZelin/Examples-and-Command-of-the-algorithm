function total_cobasis_iff=total_search_cc_iff(B,N,A)

output_optimal_dictionary=search_optimal_dictionary(B,N,A);
num=size(output_optimal_dictionary,1);
total_cobasis_iff=[];
for i=1:num
total_cobasis_iff=[total_cobasis_iff;search_ifandonlyif_cc(output_optimal_dictionary{i,1},output_optimal_dictionary{i,2},output_optimal_dictionary{i,3})];
end

end