function output = reachableOneStep(A, vector)
% This function finds the set of vertices that are reachable from 
% a given set of vertices in one step 
output = find(sum(A(:,vector),2) > 0);
