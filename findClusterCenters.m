function [ tmp_centroids ] = findClusterCenters( car_data, k)
%FINDCLUSTERCENTERS Summary of this function goes here
%   Detailed explanation goes here
    centroids = initialize_centroids(k);
    [cluster_labeled] = cluster_labelling(car_data,centroids);
    tmp_centroids = centroids;
    while tmp_centroids ~= update(cluster_labeled, tmp_centroids)
        tmp_centroids = update(cluster_labeled,tmp_centroids);
        [cluster_labeled] = cluster_labelling(car_data,tmp_centroids);
    end
    
end

