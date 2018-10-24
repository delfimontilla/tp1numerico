function matriz = aux(res)
  matriz = zeros(10,10);
  for (x=0 : 10)
    for (y=0 : 10)
      if (x==0 || x==10 || y==0 || y==10)
        matriz(x+1,y+1) = f(x/10, y/10);
      else
        matriz(x+1,y+1) = res(x,y);
      endif
    endfor
  endfor
endfunction