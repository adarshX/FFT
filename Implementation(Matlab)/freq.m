clc
clear all

load Chamoli.mat 
t = Chamoli.Time;
a1 = Chamoli.Acceleration_EW;
y = fft(a1);
Y = abs(y);
l = length(t);
a = t(2) - t(1);
fs = 1/a;
b = fs/(l-1);
fr = 0 : b : fs/2;
fr = transpose(fr);
Y = Y(1 : l/2)
plot(fr,Y);
writematrix(Y,'E-W.xls','Range','B1:B6000');
writematrix(fr,'E-W.xls','Range','A1:A6000');
title('Frequency Analysis(E-W)');
