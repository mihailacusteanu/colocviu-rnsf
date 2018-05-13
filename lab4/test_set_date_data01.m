clc
close all
clear all
load('RNSF04_data01.mat');

%control_afisare_imagine (X, d, 4);

######################################### NU ESTE NEVOIE DE ELE PENTRU IMPLEMENTAREA MATRICEALA
neuroni_strat_ascuns = 25; # = size(Wh,2)
neuroni_strat_iesire =  size(Wo,2);
neuroni_strat_inatrare =  size(X,2);
#########################################

nr_loturi_invatare = size(X,1);

bias = ones(nr_loturi_invatare,1);

X = [bias X]; #adaugare coloana de 1 pentru bias la X


netjh = X * Wh; #inmultire matriceala pentru netjh

yjh = f_activare_logistica(netjh);


bias = ones(nr_loturi_invatare,1);
yjh = [bias yjh]; #adaugare coloana de 1 pentru bias la y


netjo =  yjh * Wo; #inmultire matriceala pentru netjo

yjo = f_activare_logistica(netjo);


[M,y] = max(yjo,[],2); #Extrage coloana maxima pentru a forma vectorul y =yo de iesire

Eroare =   sum((d-y).^2)/(2*nr_loturi_invatare); # EROARE ANTRENARE

#######################################TEST2


C = d == y;
cifre_clasificate_gresit = sum(C == 0);

Eroare_clasificare = cifre_clasificate_gresit / nr_loturi_invatare