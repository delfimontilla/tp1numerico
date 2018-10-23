clear all, close all;
pkg load optim;

graphics_toolkit gnuplot;

function graficarErrorGauss()
  errorGauss = csvread("errorGauss.csv");
  figure('papersize', [40 40])
  plot(errorGauss, 'linewidth', 1);
  xlabel("Cantidad de iteraciones", 'fontsize', 50);
  ylabel("Error", 'fontsize', 50);
  title("Error VS Cantidad De Iteraciones",  'fontsize', 20);
  axes("xtick", 0:10:100);
  print('GrafErrorGauss.png','-dpng','-r300')
end