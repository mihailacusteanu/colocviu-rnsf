function [retval] = f_activare_logistica (net)
        retval = 1./(1+exp(-net));
endfunction
