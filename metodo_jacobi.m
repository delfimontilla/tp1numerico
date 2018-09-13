function resultado = metodo_jacobi(A)
  resultado(1:length(A)) = 0
  resultado(length(A)) = 1
  while all((abs(A*resultado) < 0.1)) == 1
    for i = 1:length(A)-1
      resultado(i) = (A(i,:)/A(i,i)) * resultado
    endfor
  endwhile
endfunction
