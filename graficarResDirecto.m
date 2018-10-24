function graficarResDirecto()
  clear all, close all;
  graphics_toolkit gnuplot;
  res = csvread("resDirecto.csv");
  res = aux(res)
  x = 0:0.1:1;
  y = 0:0.1:1;
  [X,Y] = meshgrid(x,y);
  fuente = 20;
  figure('papersize', [40 40])
  surf(X,Y,res);
  xlabel("X", 'fontsize', fuente);
  ylabel("Y", 'fontsize', fuente);
  zlabel("Z", 'fontsize', fuente);
  title("Resultado del metodo Directo", 'fontsize', fuente);
  #axes("xtick", 0:10:100);
  print('GrafResDirecto.png','-dpng','-r300')
endfunction