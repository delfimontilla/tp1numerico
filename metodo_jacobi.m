function resultado = metodo_jacobi(A, b)
  error = 0.00001;
  cantMaxima = 500;
  i = 0;
  nfilas = size(A)(1);
  ncolumnas = size(A)(2);
  resultado = repmat(0, 1 , ncolumnas)';
  D = inv(obtener_D(A));
  U = obtener_U(A);
  L = obtener_L(A);
  while(any(abs((A*resultado)-b)>error) - b && i < cantMaxima)
    resultado = D*b - D*(L+U)*resultado;
    i = i + 1;
  endwhile
endfunction
