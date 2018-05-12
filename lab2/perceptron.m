clc
close all
clear all
eta = 0.2;


%Folosim de 5 ori acealeasi intrari pentru poarta SAU pentru a avea un lot de invatare
%suficient de mare pentru a invata corect perceptronul
d = [0; 
     1; 
     1; 
     1;
     0; 
     1; 
     1; 
     1;
     0; 
     1; 
     1; 
     1;
     0; 
     1; 
     1; 
     1;
     0; 
     1; 
     1; 
     1;
     ]; %20x1 - iesire dorita

w = [-1 0.3 0.3]; # 1x3 - ponderi initiale

x = [1 0 0; # 20x3 - intrari
     1 0 1;
     1 1 0;
     1 1 1;
     1 0 0; 
     1 0 1;
     1 1 0;
     1 1 1;
     1 0 0; 
     1 0 1;
     1 1 0;
     1 1 1;
     1 0 0;
     1 0 1;
     1 1 0;
     1 1 1;
     1 0 0; 
     1 0 1;
     1 1 0;
     1 1 1];




w = calc_ponderi (x, w, eta,d)

