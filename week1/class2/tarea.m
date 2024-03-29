close all;
clear;

function current_tol = compute_tol (m)
    current_tol = 2**(2 * (m + 1)) / (factorial(m)*(2 * (m + 1) + 1));
endfunction

function [aprox, m] = ejemplo_integral (tol)
    aprox = 0;
    m = -1;
    current_tol = 1;
    
    while (current_tol > tol)
        m = m + 1;
        aprox = aprox + (-1)**m * 2**(2 * m) / (factorial(m) * (2 * m + 1));
        current_tol = compute_tol (m);
    endwhile
endfunction

% Main
[aprox, m] = ejemplo_integral (0.000001);
printf('Aprox = %f, m = %i', aprox, m);
