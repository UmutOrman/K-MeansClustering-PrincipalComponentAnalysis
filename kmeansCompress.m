function [ compressed_image, constructed_image ] = kmeansCompress( image, centroids)
%KMEAN Summary of this function goes here
%   Detailed explanation goes here
    [compressed_image,constructed_image] = assign_to_clusters(image,centroids);
end

