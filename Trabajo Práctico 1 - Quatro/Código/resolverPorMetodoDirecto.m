##############################################################
#                                                            #
#:::..Script de resolucion del SEL por el metodo directo..:::#
#                                                            #
##############################################################

function x = resolverPorMetodoDirecto(A, b) 

  [L, U] = descomponerLU(A);
  y = resolverPorSustitucionHaciaAdelante(L, b);
  x = resolverPorSustitucionHaciaAtras(U, y);

endfunction