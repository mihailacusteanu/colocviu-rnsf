clc
close all
clear all
eta = 0.2;



d = [0; 
     1; 
     1; 
     1;
  
     ]; 

w = [-1 0.3 0.3]; # 1x3 - ponderi initiale

x = [1 0 0; # 20x3 - intrari
     1 0 1;
     1 1 0;
     1 1 1;
    ];


prag = 0.05;;
[w, err] = calc_ponderi_adaline (x, w, eta,d, prag)












































