function [retval] = plot_data (X, B)
    retval = exp(-X.^2.*B'); #fiecare linie din X^2 e inmultita cu tot B-ul
endfunction