clear all
close all
clc

load('lab05_data01.mat');

#plot_data(d,X, C); #duraza muuult


for i=1:size(X_t, 1)
   for j=1:size(C)
    net(i,j) = sqrt((X_t(i,1) - C(j,1))^2+(X_t(i,2) - C(j,2))^2);
   end 
end

net = f_activare(net,B);

bias = ones(size(net,1),1);

y1 = [bias net];


y2 = y1*W;


[el, index] = max(y2,[],2)