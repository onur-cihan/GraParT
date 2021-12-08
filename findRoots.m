function rootList = findRoots(A)
A = double(abs(A+eye(size(A)))>0);
[n, ~] = size(A);
nodeList = cell(n,1);
for ii = 1:n
    nodeList{ii} = [ii];
    newVertices = ii;
    while(~isempty(newVertices))
        newVertices = setdiff(reachableOneStep(A, newVertices),nodeList{ii})';
        nodeList{ii} = [[nodeList{ii}] newVertices];
    end
end
rootList = [];
for ii=1:n
    if length(nodeList{ii})==n
        rootList = [rootList, ii];
    end
end


function output = reachableOneStep(A, vector)
output = find(sum(A(:,vector),2) > 0);
