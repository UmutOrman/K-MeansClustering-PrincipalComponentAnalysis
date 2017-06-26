function [ cluster_labeled ] = cluster_labelling( car_data, centroids)
%CLUSTER_LABELLING Summary of this function goes here
%   Detailed explanation goes here
    cluster_labels = zeros(size(car_data,1)*1024,1);
    centros = zeros(size(car_data,1)*1024,3);
    pixels = zeros(size(car_data,1)*1024,3);
    for i=1:size(car_data,1)
        for j=1:1024
            pixels((i-1)*1024+j,1) = car_data(i,j);
            pixels((i-1)*1024+j,2) = car_data(i,j+1024);
            pixels((i-1)*1024+j,3) = car_data(i,j+2048);
        end
    end    
    distances = zeros(size(car_data,1)*1024,size(centroids,2)/3); 
    for r=1:size(centroids,2)/3
        centros(:,1) = centroids(1,(r-1)*3+1);
        centros(:,2) = centroids(1,(r-1)*3+2);
        centros(:,3) = centroids(1,(r-1)*3+3);
        rgb_distances = abs(pixels - centros);
        %distance = diag(rgb_distances*rgb_distances'); % exceeds max.array size
        for i=1:size(rgb_distances,1)
            dis = rgb_distances(i,:)*rgb_distances(i,:)';
            distances(i,r) = dis;
        end    
    end
    for i=1:size(distances,1)
        funk = find(distances(i,:)==min(distances(i,:)));
        cluster_labels(i,1) = funk(1,1);
    end    
    cluster_labeled = zeros(size(pixels,1),4);
    cluster_labeled(:,1) = cluster_labels;
    cluster_labeled(:,2:4) = pixels; 
end

