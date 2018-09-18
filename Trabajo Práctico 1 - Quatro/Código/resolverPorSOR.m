#############################################################
#                                                           #
#:::..Script de resolucion del SEL por el metodo de SOR..:::#
#                                                           #
#############################################################

function x = resolverPorSOR(A, b, error_tolerancia, max_iteraciones, w)

  total_incognitas = rows(b);
  x0 = zeros(total_incognitas, 1);
  x = x0;
  iteraciones_actuales = 0;
  norma = 1;
  
  while ((norma > error_tolerancia) && (iteraciones_actuales < max_iteraciones))
  
  iteraciones_actuales++;
   x_anterior = 0;
    
  for (i = 1 : total_incognitas)
 
    suma = 0;
    
    for (j = 1 : total_incognitas)
 
      if (i != j) 
        
        suma = suma + A(i, j) * x(j, 1);
 
      endif
      
    endfor
  
   x(i, 1) = w * ((b(i,1) - suma) / A(i,i)) + (1 - w) * x_anterior;
   x_anterior = x(i, 1);
  
  endfor 
  
  norma = norm(x0 - x);
  x0 = x;
  
  endwhile

endfunction 