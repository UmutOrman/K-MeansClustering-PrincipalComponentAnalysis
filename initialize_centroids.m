function [ centroids ] = initialize_centroids( k )
%INITIALIZE_CENTROIDS Summary of this function goes here
%   Detailed explanation goes here
    centroids = zeros(1,k*3);
    for r=1:k
        centroid = randi([1,255],1,3);
        centroids(1,(r-1)*3+1:(r-1)*3+3) = centroid;
    end
  
end

