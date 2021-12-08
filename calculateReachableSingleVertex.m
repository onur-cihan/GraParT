function reachableFrom = calculateReachableSingleVertex(A, vertex)
reachableFrom = vertex;
newVertices = vertex;
while(~isempty(newVertices))
    newVertices = setdiff(reachableOneStep(A, newVertices),reachableFrom)';
    reachableFrom = [reachableFrom newVertices];
end