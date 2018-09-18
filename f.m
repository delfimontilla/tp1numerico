function resultado  = f(x, y)  if y==0 || y==1    resultado = 0;  elseif x==0 || x==1    resultado = y * (1 - y);  else    resultado = NaN;  endif
endfunction
