function resultado = obtener_U(A)  nFil = size(A)(1);  nCol = size(A)(2);  resultado = zeros(nFil, nCol);  for i = 1:nFil    for j = 1:nCol      if j > i        resultado(i,j) = A(i,j);      endif    endfor  endfor
endfunction
