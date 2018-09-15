function resultado = metodo_jacobi(A, b)
  nfilas = size(A)(1);
  ncolumnas = size(A)(2);
  resultado = repmat(0, 1 , ncolumnas)';
  D = inv(obtener_D(A));
  U = obtener_U(A);
  L = obtener_L(A);
  while(all((abs((A*resultado) - b) > 0.00001)))
    resultado = D*b - D*(L+U)*resultado
  endwhile
endfunction
