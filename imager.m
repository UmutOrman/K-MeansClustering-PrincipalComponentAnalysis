function [ A ] = imager( image )
%IMAGER Summary of this function goes here
%   Detailed explanation goes here
    R=image(1,1:1024);
    G=image(1,1025:2048);
    B=image(1,2049:3072);
    A(:,:,1)=reshape(R,32,32);
    A(:,:,2)=reshape(G,32,32);
    A(:,:,3)=reshape(B,32,32);
end

