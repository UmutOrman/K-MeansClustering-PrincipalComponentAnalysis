function [ result ] = update(cluster_labeled, centroids )
%UPDATE Summary of this function goes here
%   Detailed explanation goes here
    result = centroids;
    for r=1:size(centroids,2)/3
        selection = cluster_labeled(cluster_labeled(:,1)==r);
        selected = cluster_labeled(selection,:);
        result(1,(r-1)*3+1) = mean(selected(:,2));
        result(1,(r-1)*3+2) = mean(selected(:,3));
        result(1,(r-1)*3+3) = mean(selected(:,4));
    end    
end

