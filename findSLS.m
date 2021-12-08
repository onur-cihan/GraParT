function secondaryStructure = findSLS(A, tempMat, primaryStructure)
% This function finds the secondary layer subgraphs of a given digraph
n = size(tempMat,1);
secondaryStructure = struct;

assignedVertices = [primaryStructure.vertices{:}];
numSecondaryRoots = 0;
secondaryStructure.vertices={};
secondaryStructure.roots={};
while(length(assignedVertices) < n)
    secondaryRoots = setdiff(reachableOneStep(A, assignedVertices), assignedVertices);
    for ii = 1: length(secondaryRoots)
        secondaryStructure.roots{numSecondaryRoots+ii} = secondaryRoots(ii);
        newA = A;
        newA(assignedVertices,:) = 0; newA(:, assignedVertices) = 0;
        newA(setdiff(secondaryRoots, secondaryRoots(ii)), :) = 0;
        newA(:, setdiff(secondaryRoots, secondaryRoots(ii))) = 0;
        newReachableFrom{ii} = calculateReachableSingleVertex(newA, secondaryRoots(ii));
    end
    tempMat2 = zeros(length(secondaryRoots),n);
    for ii = 1:length(secondaryRoots)
        tempMat2(ii,[newReachableFrom{ii}]) = 1;
    end
    for ii = 1: length(secondaryRoots)
        tempVec = sum(tempMat2([1:ii-1 ii+1:length(secondaryRoots)],:),1)>0;
        Sibar{numSecondaryRoots+ii} = [find(tempMat2(ii,:)- tempVec > 0)];
        secondaryStructure.vertices{numSecondaryRoots+ii} = [secondaryRoots(ii) setdiff(Sibar{numSecondaryRoots+ii}, secondaryRoots)];
        assignedVertices = [assignedVertices secondaryStructure.vertices{numSecondaryRoots+ii}];
    end
    numSecondaryRoots = numSecondaryRoots + length(secondaryRoots);
end


