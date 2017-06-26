function [output, re_image ] = assign_to_clusters( image, centroids )
%ASSIGN_TO_CLUSTERS Summary of this function goes here
%   Detailed explanation goes here
    k = size(centroids,2)/3;
    cluster_labeled = cluster_labelling(image,centroids);
    assigned = cluster_labeled(:,1);
    output = assigned';
    for r=1:k
        selection = (cluster_labeled(:,1)==r);
        cluster_labeled(selection,2) = centroids(1,(r-1)*3+1);
        cluster_labeled(selection,3) = centroids(1,(r-1)*3+2);
        cluster_labeled(selection,4) = centroids(1,(r-1)*3+3);
    end    
    re_image = zeros(1,3072);
    for i=1:1024
        re_image(1,i) = cluster_labeled(i,2);
        re_image(1,i+1024) = cluster_labeled(i,3);
        re_image(1,i+2048) = cluster_labeled(i,4);
    end
    re_image = uint8(re_image);
end

