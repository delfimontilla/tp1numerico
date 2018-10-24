function graficarErrorJacobi()
  clear all, close all;
  #graphics_toolkit gnuplot;
  errorGauss = csvread("errorJacobi.csv");
  fuente = 20;
  figure('papersize', [40 40])
  plot(errorGauss, 'linewidth', 1);
  xlabel("Cantidad de iteraciones", 'fontsize', fuente);
  ylabel("Error", 'fontsize', fuente);
  title("Error del metodo Jacobi VS Cantidad De Iteraciones", 'fontsize', fuente);
  #axes("xtick", 0:10:100);
  print('GrafErrorJacobi.png','-dpng','-r300')
endfunction