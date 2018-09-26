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
  while(norm((A*resultado)-b) > error && i < cantMaxima)
    resultado = D*b - D*(L+U)*resultado;
    i = i + 1;
    errorJacobi(i) = norm((A*resultado)-b);
  endwhile
  csvwrite("errorJacobi.csv", errorJacobi)
endfunction
