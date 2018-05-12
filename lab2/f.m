function [fnet] = f (wi, xij)
    net_j = sum(wi .* xij);
    if net_j >= 0
        fnet = 1;
    else
        fnet = 0;
    end
endfunction