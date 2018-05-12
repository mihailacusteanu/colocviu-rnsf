

function [fnet] = f (wi, xij)
    net_j = sum(wi .* xij);
    fnet = net_j;
endfunction
