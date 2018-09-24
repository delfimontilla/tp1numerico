
function x = metodo_GaussSeidel(A, b)

  max_iteraciones = 50; %Opcional, elegido por el equipo
  error_tolerancia = 0.00001; %Opcional, elegido por el equipo
  iteraciones = 0;
  norma = 1;
  cant_incognitas = rows(b);
  x0 = zeros(cant_incognitas, 1);
  x = x0;
  
  %Validacion
  [filas,columnas] = size(A);
  if filas~=columnas, error('La matriz debe ser cuadrada'); end
  
  while ((norma > error_tolerancia) && (iteraciones < max_iteraciones))
  
  iteraciones++;
  
  for (i = 1 : cant_incognitas)
 
    suma = 0;
    
    for (j = 1 : cant_incognitas)
 
      if (i != j) 
        
        suma = suma + A(i, j) * x(j, 1);
 
      endif
      
    endfor
  
   x(i, 1) = (b(i,1) - suma) / A(i,i);
  
  endfor 
  
  norma = norm(x0 - x);
  x0 = x;
  
  endwhile
