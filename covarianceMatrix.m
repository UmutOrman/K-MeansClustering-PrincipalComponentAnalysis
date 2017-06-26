function [ fun_variance] = covarianceMatrix( car_data )
%COVARIANCEMATRIX Summary of this function goes here
%   Detailed explanation goes here
    scaled_data = data_scaler(car_data);
    fun_variance = zeros(3072,3072);
    for i=1:size(scaled_data,1)
        tmp_ins = scaled_data(i,:)';
        addition = tmp_ins * (tmp_ins)';
        fun_variance = fun_variance + addition;
    end
    fun_variance = fun_variance / size(scaled_data,1);
    
end

