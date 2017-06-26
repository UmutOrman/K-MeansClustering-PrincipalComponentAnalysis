function [ result ] = data_scaler( car_data )
%DATA_SCALER Summary of this function goes here
%   Detailed explanation goes here
    result = car_data;
    for i=1:3072
        tmp_mean_matrix = zeros(size(car_data,1),1);
        tmp_mean = mean(car_data(:,i));
        tmp_mean_matrix(:) = tmp_mean;
        tmp_deviation = std(car_data(:,i));
        result(:,i) = (result(:,i) - tmp_mean_matrix)/tmp_deviation;
    end   
           
end

