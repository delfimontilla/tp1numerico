function [directo, jacobi, gauss] = TP1()
  [A, b] = generar_SEL([0 1], [0 1], 0.1);
  directo = metodo_directo(A, b);
  jacobi = metodo_jacobi(A, b);
  gauss = metodo_gaussSeidel(A, b);
  directo = reshape(directo, 9, 9)';
  jacobi  = reshape(jacobi, 9, 9)';
  gauss = reshape(gauss, 9, 9)';
  csvwrite("resDirecto.csv", directo)
  csvwrite("resJacobi.csv",jacobi)
  csvwrite("resGauss.csv",gauss)
endfunction
  