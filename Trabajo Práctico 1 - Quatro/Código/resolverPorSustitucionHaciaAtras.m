######################################################################
#                                                                    #
#:::..Script de resolucion de matriz por sustitucion hacia atras..:::#
#                                                                    #
######################################################################

function x = resolverPorSustitucionHaciaAtras(U, b)

  n = length(U);
  x = zeros(n, 1);
  
  for j = n : -1 : 1
  
    x(j, 1) = b(j, 1) / U(j, j);
    b(1 : j-1, 1) = b(1 : j-1, 1) - U(1 : j-1, j) * x(j, 1);
  
  endfor
  
endfunction