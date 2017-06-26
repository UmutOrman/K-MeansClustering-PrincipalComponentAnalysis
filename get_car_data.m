function [ labellious] = get_car_data( labels, data)
%GET_CAR_DATA Summary of this function goes here
%   Detailed explanation goes here
    %labellious = zeros(10000,3072);
    labellious = [];
    for n = 1:10000
        if labels(n,1) == 1
            labellious = [labellious;data(n,:)];
        end
    end
end


