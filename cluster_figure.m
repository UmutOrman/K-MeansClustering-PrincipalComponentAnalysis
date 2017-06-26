function [ A ] = cluster_figure( centroid )
%CLUSTER_FIGURE Summary of this function goes here
%   Detailed explanation goes here
    R = zeros(32,32);
    R(:) = uint8(centroid(1,1));
    G = zeros (32,32);
    G(:) = uint8(centroid(1,2));
    B = zeros(32,32);
    B(:) = uint8(centroid(1,3));
    A(:,:,1)= R;
    A(:,:,2)= G;
    A(:,:,3)= B;
    A = uint8(A);
end

