# Examples and Command using in our paper
Welcome! Here are all commands and examples used in our paper.

The folder "examples_cubecone" contains examples and results in the subsection "Hypercube with a cone being cut". The file "cube+cone data - dim 4/10.mat" showcases examples in this subsection, while the other files follow a naming convention comprising "cubecone_name of algorithm_result type". In the middle section of the file name, "zerorule" represents the results of our method, "incomccr" corresponds to the results obtained using Avis & Fukuda's method, which utilizes an incomplete condition in regards to the reverse Criss-Cross rule. "adjcbasi" signifies the results obtained using Moss's method, which generates all dictionaries by checking adjacents. The final section of the file name includes "num", which indicates the number of vertices found by the respective method, "tim" represents the time consumed by the method, and "linegraph" records the number of found vertices periodically for each method.

The folder "examples_random" encompasses examples and results related to the subsection "Random arrangement". The file "general data - dim 2/6 - hyperplane 7-15" presents examples within this subsection. Similar to the "examples_cubecone" folder, the remaining files in the "examples_random" folder follow a similar naming convention, except that the "cubecone_name of algorithm_result type" is replaced with "random_name of algorithm_result type".

The folder "examples_ReLU" contains examples and results pertaining to the subsection "A three-layer ReLU neural network". The file "Generate all cells and corresponding arrangement.mlx" is capable of generating all feasible regions, consisting of 7 hyperplanes in the input layer and additional 5 hyperplanes based on the active state within each feasible region. The source code for this file is stored in "Datas of relu with input and hidden layer, with further details provided in the file 'generate all cells'.mat". The corresponding outputs are stored in "Datas of relu information.mat". Similar to the previous cases, the other files within this folder follow a similar naming convention, with "cubecone_name of algorithm_result type" replaced by "relu_name of algorithm_result type". In the final section of each file, "arra" and "poly" is used to display the results within the arrangement and on the feasible region, respectively.

The folder "functions_standard" showcases the standard version of each algorithm described in the paper. The "Symbolic" folder demonstrates the usage of symbolic calculations to solve each example. The "reverse Zero rule" folder contains our method that reverses the Zero rule. The "incomplete CC rule" folder demonstrates Avis & Fukuda's method. The "basis-enumeration function" folder demonstrates the method guided by Moss. Lastly, the "reverse CC rule" folder showcases the reversal of the Criss-Cross rule along with the condition after complement.

The folder "functions_spanning tree" contains algorithms for each method that allow them to plot a spanning tree after completing an example.

The folder "functions_linegraph" contains algorithms for each method that record the vertices found by each method periodically.

The folder "functions_polytope/arrangement" contains algorithms for each method that count both the vertices in the arrangement and on a feasible region defined by certain constraints.

The folder "functions_polytope/arrangement_linegraph" combines the functionalities of "functions_linegraph" and "functions_polytope/arrangement". It allows for counting both the vertices in the arrangement and on a feasible region, while also recording the vertices found by each method periodically.

If you have any questions about the command or our paper, please don't hesitate to reach out to us. Detailed illustrations for each file can be found within them. We are available and eager to assist you.
