function [matriz_SEL, vector_solucion] = generar_SEL(x, y, h)
 
  filas = length([y(1):h:y(2)]);
  columnas = length([x(1):h:x(2)]);
  rectangulo = zeros(filas, columnas);
  area_SEL = (filas - 2) * (columnas - 2);
  matriz_SEL = zeros(area_SEL, area_SEL);
  vector_solucion = zeros(area_SEL, 1);
  k = 0;
  
  for i=(1:filas)
    for j = (1:columnas)
      rectangulo(i,j) = f((j-1)*h,(i-1)*h);
    endfor
  endfor
  
  for j = 1 : (columnas - 2)
   for i = 1 : (filas - 2)
    
    k++;
    matriz_SEL(k, k) = -4;
    suma_solucion = 0;
    
    #actualizo lado izquierdo
    if isnan(rectangulo(j + 1, i))
      matriz_SEL(k, k - 1) = 1;
    else
      suma_solucion -= rectangulo(j + 1, i);
    endif
    
    #actualizo lado derecho
    if isnan(rectangulo(j + 1, i + 2))
      matriz_SEL(k, k + 1) = 1;
    else
      suma_solucion -= rectangulo(j + 1, i + 2);
    endif
    
    #actualizo arriba
    if isnan(rectangulo(j, i + 1))
      matriz_SEL(k, k - (columnas - 2)) = 1;
    else
      suma_solucion -= rectangulo(j, i + 1);
    endif
    
    #actualizo abajo
     if isnan(rectangulo(j + 2, i + 1))
      matriz_SEL(k, k + (columnas - 2)) = 1;
    else
      suma_solucion -= rectangulo(j + 2, i + 1);
    endif
   
    vector_solucion(k, 1) = suma_solucion;
    
   endfor
  endfor
  
endfunction