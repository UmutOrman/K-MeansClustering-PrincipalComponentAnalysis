function [ coefficients, reconstructed_image ] = pcaCompress( principal_components, image )
%PCACOMPRESS Summary of this function goes here
%   Detailed explanation goes here
    %scaled_image = data_scaler(double(image));
    coefficients = double(principal_components)' * double(image)';    
    reconstructed_image = uint8(coefficients' * principal_components');
end

