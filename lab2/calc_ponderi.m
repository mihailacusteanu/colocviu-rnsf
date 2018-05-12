
function [w] = calc_ponderi (x, w, eta,d)
    M = size(x,1); # nr intrari
    for j=1:M
      dj = d(j);
      yj = f(w,x(j,:));
      ej = d(j) - yj;
      delta_w = eta*ej*x(j,:);
      w = w + delta_w;
     
    end
endfunction
