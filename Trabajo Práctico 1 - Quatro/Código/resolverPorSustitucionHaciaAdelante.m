#########################################################################
#                                                                       #
#:::..Script de resolucion de matriz por sustitucion hacia adelante..:::#
#                                                                       #
#########################################################################

function y = resolverPorSustitucionHaciaAdelante(L, b)
 
  n = length(L);
  y = zeros(n, 1);
  
  for j = 1 : n
    
    y(j, 1) = b(j, 1) / L(j, j);
    b(j+1 : n, 1) = b(j+1 : n, 1) - L(j+1 : n, j) * y(j, 1);
  
  endfor 

endfunction