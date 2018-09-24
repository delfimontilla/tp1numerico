function x = metodo_directo(A,b)

  m = length(A);
  
  U = A;
  L = eye(m, m);
  
  for k = 1 : m - 1
  
    for j = (k + 1) : m
    
      L(j, k) = U(j, k) / U(k,k);
      U(j, k : m) = U(j, k : m) - L(j, k) * U(k, k : m);
    
    endfor
    
endfor
 
 n = length(L);
 y = zeros(n, 1);
  
 for i = 1 : n
    
    y(i, 1) = b(i, 1) / L(i, i);
    b(i+1 : n, 1) = b(i+1 : n, 1) - L(i+1 : n, i) * y(i, 1);
  
endfor 

m = length(U);
x = zeros(m, 1);
  
  for j = m : -1 : 1
  
    x(j, 1) = y(j, 1) / U(j, j);
    y(1 : j-1, 1) = y(1 : j-1, 1) - U(1 : j-1, j) * x(j, 1);
  
endfor

endfunction
