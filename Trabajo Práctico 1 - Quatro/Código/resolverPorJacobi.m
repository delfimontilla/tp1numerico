################################################################
#                                                              #
#:::..Script de resolucion del SEL por el metodo de Jacobi..:::#
#                                                              #
################################################################

function x = resolverPorJacobi(A, b, error_tolerancia, max_iteraciones)

  total_incognitas = rows(b);
  x0 = zeros(total_incognitas, 1);
  x = x0;
  iteraciones_actuales = 0;
  norma = 1;
  
  while ((norma > error_tolerancia) && (iteraciones_actuales < max_iteraciones))
  
  iteraciones_actuales++;
  
  for (i = 1 : total_incognitas)
 
    suma = 0;
    
    for (j = 1 : total_incognitas)
 
      if (i != j) 
        
        suma = suma + A(i, j) * x0(j, 1);
 
      endif
      
    endfor
  
   x(i, 1) = (b(i,1) - suma) / A(i,i);
  
  endfor 
  
  norma = norm(x0 - x);
  x0 = x;
  
  endwhile
  
endfunction