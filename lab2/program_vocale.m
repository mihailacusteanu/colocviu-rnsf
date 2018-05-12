clear all
close all
clc

##############EXTRAGERE CARACTERISTICI LOT INVATARE#################
my_path_a = 'a/';
my_path_e = 'e/';
numar_vocale_citite = 40;
index=1;
Pt1 = extract_features(my_path_a, index, numar_vocale_citite);
Pt2 = extract_features(my_path_e,index, numar_vocale_citite);
scale = 70000;
Pt1(:,1) /= scale;
Pt1(:,2) /= scale;

Pt2(:,1) /= scale;
Pt2(:,2) /= scale;
##############PRELUCRATE DATE PENTRU CALCUL PONDERI#################

numar_vocale_citite = numar_vocale_citite;#*0.8;

bias = ones(numar_vocale_citite,1);
Pt1_a = [bias Pt1];
Pt2_e = [bias Pt2];

x = [Pt1_a ; Pt2_e];

d =  [ones(numar_vocale_citite,1) ; zeros(numar_vocale_citite,1)]; # iesirea dorita, vocal a clasa 1, vocala e clasa 0

eta = 0.1; 
w = [1 5 5]; # initializare ponderi

##############CACULARE PONDERI PE LOTUL DE INVATARE#################
w = calc_ponderi (x, w, eta,d); #ponderi finale dupa lotul de invatare

w0 = w(1)
w1 = w(2)
w2 = w(3)



figure,plot([0 -(w0/w2)], [-(w0/w1) 0])
hold on
plot(Pt1(:,1),Pt1(:,2), '*r');
hold on
plot(Pt2(:,1),Pt2(:,2), 'ob');



##############EXTRAGERE CARACTERISTICI LOT TESTARE#################
carac_test_a = extract_features(my_path_a, 33, 40);
carac_test_e = extract_features(my_path_e, 33, 40);

carac_test_a(:,1) /= scale;
carac_test_a(:,2) /= scale;

carac_test_e(:,1) /= scale;
carac_test_e(:,2) /= scale;

##############EXTRAGERE CARACTERISTICI LOT INVATARE#################

numar_vocale_citite = 40;
numar_vocale_citite = numar_vocale_citite * 0.2;

bias = ones(numar_vocale_citite,1);
carac_test_a = [bias carac_test_a];
carac_test_e = [bias carac_test_e];

x = [carac_test_a ; carac_test_e]
d =  [ones(numar_vocale_citite,1) ; zeros(numar_vocale_citite,1)]; # iesirea dorita, vocal a clasa 1, vocala e clasa 0


y = x * w';
size1 = size(y,1);


##############TESTARE#################
for j =1:size1
    A = f(x(j), w);
    A > 0
end

















