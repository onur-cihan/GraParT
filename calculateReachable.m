function reachableFrom = calculateReachable(A)
% This function finds the transitive closure of a given digraph
[n, ~] = size(A);
reachableFrom = cell(n,1);
for ii = 1:n
    reachableFrom{ii} = [ii];
    newVertices = ii;
    while(~isempty(newVertices))
        newVertices = setdiff(reachableOneStep(A, newVertices),reachableFrom{ii})';
        reachableFrom{ii} = [[reachableFrom{ii}] newVertices];
    end
end