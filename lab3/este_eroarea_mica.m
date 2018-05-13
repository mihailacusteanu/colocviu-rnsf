

function [retval] = este_eroarea_mica (Eroare, prag)
    eroare_totala =  abs(sum(sum(Eroare)))
    if eroare_totala < prag
        retval =  true;
    else
        retval = false;
    end  
endfunction
