clc
close all
clear all
load('RNSF04_data01.mat');
load('RNSF04_data02.mat');

nr_loturi_invatare = size(T,1);

bias = ones(nr_loturi_invatare,1);

T = [bias T]; #adaugare coloana de 1 pentru bias la X


netjh = T * Wh; #inmultire matriceala pentru netjh

yjh = f_activare_logistica(netjh);


bias = ones(nr_loturi_invatare,1);
yjh = [bias yjh]; #adaugare coloana de 1 pentru bias la y


netjo =  yjh * Wo; #inmultire matriceala pentru netjo

yjo = f_activare_logistica(netjo);


[M,y] = max(yjo,[],2); #Extrage coloana maxima pentru a forma vectorul y = yo de iesire

Eroare =   sum((d_t-y).^2)/(2*nr_loturi_invatare);  # EROARE ANTRENARE

#######################################


C = d_t == y;
cifre_clasificate_gresit = sum(C == 0);

Eroare_clasificare = cifre_clasificate_gresit / nr_loturi_invatare;





