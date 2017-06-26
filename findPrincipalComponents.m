function [ components ] = findPrincipalComponents( car_data, k )
%FINDPRINCIPALCOMPONENTS Summary of this function goes here
%   Detailed explanation goes here
    covariance_matrix = covarianceMatrix(car_data);
    [components,~] = eigs(covariance_matrix, k);
end

