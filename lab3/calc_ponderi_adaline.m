
function [w, err] = calc_ponderi_adaline (x, w, eta,d, prag)
    M = size(x,1); # nr intrari
    err = 1;
    while err > prag
        for j=1:M
            yj = f(w,x(j,:)); #y = fnet
            err = ((d(j) - yj)^2)/2;
            delta_w = eta*(d(j) - yj)*x(j,:);
            w = w + delta_w;       
        end
    end
endfunction