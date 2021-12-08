function partitionedGraph = partitionGraph(A)
% Graph Partitioning Toolbox
% by Dr. Onur Cihan
%
% This is the main function of the Graph Partitioning Toolbox
%
% Given an adjacency matrix of a digraph, this function computes
% the numbers of the primary and secondary layer subgraphs, the set of
% vertices in each subgraph, transformed adjacency, Laplacian and system
% matrices.
%
% Usage: 
% pG = partitionGraph(A)
%
% where A is the unweighted adjacency matrix and pG is a structure 
% with the following fields:
%
% A             Adjacency matrix of the digraph
% L             Laplacian of the digraph
% W             The system matrix of the digraph considering equal
%               weighting
% primary       a structure consisting of the sets of roots and the sets of 
%               vertices in each primary layer subgraph
% secondary     a structure consisting of the principal roots and the sets 
%               of vertices in each secondary layer subgraph
% span          a structure consisting of the sets of vertices that are 
%               reachable from each vertex in the digraph
% lp            the number of primary layer subgraphs
% ls            the number of secondary layer subgraphs
% np            the number of vertices in the primary layer subgraphs
% ns            the number of vertices in the secondary layer subgraphs
% transformed   a structure consisting of the transformed L, Lp, Ls, Lsp, 
%               W, Wp, Ws and Wsp and the transformation matrix T


[n, m] = size(A);
if n ~= m
    error('The adjacency matrix A must be square');
end

A = double(A > 0);
A = A-diag(diag(A));
D = diag(sum(A+eye(n),2)); % Degree matrix
W = diag(1./sum(A+eye(n),2))*(A+eye(n));
L = D-(A+eye(n)); % Laplacian matrix

partitionedGraph.A = A;
partitionedGraph.L = L;
partitionedGraph.W = W;
reachableFrom = calculateReachable(A);
tempMat = zeros(n,n);
for ii = 1:n
    tempMat(ii,[reachableFrom{ii}]) = 1;
end
partitionedGraph.primary = findPLS(reachableFrom, tempMat);
for ii = 1:length(partitionedGraph.primary.vertices)
    for jj = 1:length(partitionedGraph.primary.vertices{ii})
        partitionedGraph.span{partitionedGraph.primary.vertices{ii}(jj)} = intersect(reachableFrom{partitionedGraph.primary.vertices{ii}(jj)}, [partitionedGraph.primary.vertices{ii}]);
    end
end

partitionedGraph.secondary = findSLS(A, tempMat, partitionedGraph.primary);
for ii = 1:length(partitionedGraph.secondary.vertices)
    for jj = 1:length(partitionedGraph.secondary.vertices{ii})
        partitionedGraph.span{partitionedGraph.secondary.vertices{ii}(jj)} = intersect(reachableFrom{partitionedGraph.secondary.vertices{ii}(jj)}, [partitionedGraph.secondary.vertices{ii}]);
    end
end

partitionedGraph.lp = length(partitionedGraph.primary.vertices);
partitionedGraph.ls = length(partitionedGraph.secondary.vertices);
partitionedGraph.np = length([partitionedGraph.primary.vertices{:}]);
partitionedGraph.ns = length([partitionedGraph.secondary.vertices{:}]);

T = eye(n);
T = T([[[partitionedGraph.primary.vertices{:}]] [[partitionedGraph.secondary.vertices{:}]]], :);
Lhat = T*L/T;
Lp = Lhat(1:partitionedGraph.np,1:partitionedGraph.np);
Ls = Lhat(partitionedGraph.np+1:end,partitionedGraph.np+1:end);
Lsp = Lhat(partitionedGraph.np+1:end,1:partitionedGraph.np);
What = T*W/T;
Wp = What(1:partitionedGraph.np,1:partitionedGraph.np);
Ws = What(partitionedGraph.np+1:end,partitionedGraph.np+1:end);
Wsp = What(partitionedGraph.np+1:end,1:partitionedGraph.np);

partitionedGraph.transformed.T =  T;
partitionedGraph.transformed.L = Lhat;
partitionedGraph.transformed.Lp = Lp;
partitionedGraph.transformed.Ls = Ls;
partitionedGraph.transformed.Lsp = Lsp;

partitionedGraph.transformed.W = What;
partitionedGraph.transformed.Wp = Wp;
partitionedGraph.transformed.Ws = Ws;
partitionedGraph.transformed.Wsp = Wsp;
