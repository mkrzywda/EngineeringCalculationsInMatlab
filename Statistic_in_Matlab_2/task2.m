% boxplot - wykres ramka-wąsy, skrzynkowy, pudełkowy
figure('Color',[1,1,1], 'Name', 'odleglość dla kątów');
boxplot(s,a0);
ylabel('odległość');
title('odległóści w kolejnych rzutach pod różnymi kątami');
figure('Color',[1,1,1], 'Name', 'wysokość dla kątów');
boxplot(h,a0);
ylabel('wysokość');
title('wysokości w kolejnych rzutach pod różnymi kątami');
help boxplot;