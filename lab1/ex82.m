x=[2 3 0 9 7 8];
w=[0.2 1.5 -0.1 -0.7 0.7 0.02];

%Rezolvare




N = size(x,2);
sum = 0;

for i=1:N
    sum += x(i)*w(i);
end

R = sum;
%SAU
R = x*w'; %formula matriceala -> cea mai simpla