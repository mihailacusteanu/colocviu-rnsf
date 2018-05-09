clc
clear all
M =[
  4.5 1 1;
  1.5 2 0;
  4 3 1;
  5 2.5 1;
  4 2 1;
  0 1 0;
  1 0 0;
  2 1 0
  ];
  
  
  
 N = size(M,1);
 
 for i = 1:N
    plot(M(i,1), M(i,2), ia_eticheta(M(i,3))), hold on
 end