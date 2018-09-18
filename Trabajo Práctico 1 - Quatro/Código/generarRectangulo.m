###############################################
#                                             #
#:::..Script de generacion del rectangulo..:::#
#                                             #
############################################### 

function rectangulo = generarRectangulo(filas, columnas)
  
  rectangulo = zeros(columnas, filas);
  
  for i = 1 : filas
    
    valor = ((i-1) / 10) * (1- ((i-1) / 10));
    rectangulo(1, i) = rectangulo(columnas, i) = valor;
    
   endfor

   for j = 1 : (columnas - 2)
    for i = 1 : (filas - 2)
      
      rectangulo(j + 1, i + 1) = NaN;
      
     endfor
   endfor
   
endfunction