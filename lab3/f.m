function [net_j] = f (wi, xij)
    net_j = sum(wi .* xij);
endfunction