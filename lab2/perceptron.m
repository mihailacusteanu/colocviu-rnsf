clc
close all
clear all
eta = 0.2;

d = [0; 1; 1; 1]; %4x1 - iesire dorita

w = [-1 0.3 0.3]; # 1x3 - ponderi initiale

x = [1 0 0; # 4x3 - intrari
     1 0 1;
     1 1 0;
     1 1 1];




w = calc_ponderi (x, w, eta,d)

