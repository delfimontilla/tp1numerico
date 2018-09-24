function x = metodo_directo(A,b)

 [m,n]=size(A);
  
 L = obtener_L(A);
 U = obtener_U(A);
 
 n = length(L);
 y = zeros(n, 1);
  
 for i = 1 : n
    
    y(i, 1) = b(i, 1) / L(i, i);
    b(i+1 : n, 1) = b(i+1 : n, 1) - L(i+1 : n, i) * y(i, 1);
  
endfor 

m = length(U);
x = zeros(n, 1);
  
  for j = m : -1 : 1
  
    x(j, 1) = b(j, 1) / U(j, j);
    b(1 : j-1, 1) = b(1 : j-1, 1) - U(1 : j-1, j) * x(j, 1);
  
endfor

endfunction
