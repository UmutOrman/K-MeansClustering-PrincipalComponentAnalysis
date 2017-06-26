function [ all_data] = get_all_car_data( batch1, batch2, batch3, batch4, batch5 )
%GET_ALL_CAR_DATA Summary of this function goes here
%   Detailed explanation goes here
    get_batch1 = get_car_data(batch1.labels,batch1.data);
    get_batch2 = get_car_data(batch2.labels,batch2.data);
    get_batch3 = get_car_data(batch3.labels,batch3.data);
    get_batch4 = get_car_data(batch4.labels,batch4.data);
    get_batch5 = get_car_data(batch5.labels,batch5.data);
    all_data = get_batch1;
    all_data = [all_data;get_batch2];
    all_data = [all_data;get_batch3];
    all_data = [all_data;get_batch4];
    all_data = [all_data;get_batch5];
    all_data = double(all_data);
end

