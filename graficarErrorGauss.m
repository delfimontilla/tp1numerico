function graficarErrorGauss()
  errorGauss = csvread("errorGauss.csv");
  figure('papersize', [40 40])
  plot(errorGauss, 'linewidth', 1);
  xlabel("Cantidad de iteraciones", 'fontsize', 50);
  ylabel("Error", 'fontsize', 50);
  title("Error VS Cantidad De Iteraciones",  'fontsize', 50);
  axes("xtick", 0:10:100);
end