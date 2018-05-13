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
scale = 1200000;

Pt1 = Pt1 ./ scale;
Pt2 = Pt2 ./ scale;


##############PRELUCRATE DATE PENTRU CALCUL PONDERI#################

numar_vocale_citite = numar_vocale_citite;#*0.8;

bias = ones(numar_vocale_citite,1);
Pt1_a = [bias Pt1];
Pt2_e = [bias Pt2];

x = [Pt1_a ; Pt2_e];

d =  [ones(numar_vocale_citite,1) ; zeros(numar_vocale_citite,1)]; # iesirea dorita, vocal a clasa 1, vocala e clasa 0
d1_a = ones(numar_vocale_citite,1);
d1_e = zeros(numar_vocale_citite,1);

eta = 0.1; 
w = [1 5 5]; # initializare ponderi

x_new = x;
d_new = d;

for i=1:size(x)(1)/2
  x_new(i*2) =  Pt1_a(i);
  x_new(i*2-1) =  Pt2_e(i);
  
  d_new(i*2) =  d1_a(i);
  d_new(i*2-1) =  d1_e(i);
end

d = d_new;
x = x_new;

##############CACULARE PONDERI PE LOTUL DE INVATARE#################
x_invatare = x(1:60,:);
d_invatare = d(1:60,:);

eroare_maxima = 0.0001;#10%
w = calc_ponderi_adaline (x_invatare, w, eta,d_invatare, eroare_maxima); #ponderi finale dupa lotul de invatare

w0 = w(1);
w1 = w(2);
w2 = w(3);



figure,plot([0 -(w0/w2)], [-(w0/w1) 0])
hold on
plot(Pt1(:,1),Pt1(:,2), '*r');
hold on
plot(Pt2(:,1),Pt2(:,2), 'ob');



##############EXTRAGERE CARACTERISTICI LOT TESTARE#################
x_testare = x(1:60,:);
d_testare = d(1:60,:);



y = sum(x_testare*w', 2) > 0;

%y == d;

size1 = size(x_testare)(1);
##############TESTARE#################
for j =1:size1
    A = f(x_testare(j), w);
    
end



















