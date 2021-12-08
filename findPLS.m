function primaryStructure = findPLS(reachableFrom, tempMat)
% This function finds the primary layer subgraphs of a given digraph
n = size(tempMat,1);
primaryStructure = struct;


Lp = 1:n;
for ii = 1:n
    for jj = ii+1:n
        if tempMat(jj,:)-tempMat(ii,:) < 1
            Lp = setdiff(Lp, jj);
        elseif tempMat(ii,:)-tempMat(jj,:) < 1
            Lp = setdiff(Lp, ii);
        end
    end
end
Sibar = cell(length(Lp),1);
for ii = 1:length(Lp)
    tempVec = sum(tempMat(Lp([1:ii-1 ii+1:length(Lp)]),:),1)>0;
    Sibar{ii} = find(tempMat(Lp(ii),:)- tempVec > 0);
end
primaryStructure.roots = Lp;
primaryStructure.vertices = Sibar;

