clc
clear all

load Chamoli.mat 
t = Chamoli.Time;
a1 = Chamoli.Acceleration_EW;
a2 = Chamoli.Acceleration_NS;
a3 = Chamoli.Acceleration_Vertical;

s = get(0, 'ScreenSize');
figure('Position', [0 0 s(3) s(4)]);
figure(1)
plot(t,a1);
title('Acceleration vs Time(E-W)');
xlabel('time ');
ylabel('acceleration');
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
yt = linspace(-8 ,8 , 33);
yticks(yt);
saveas(gcf,'E-W.png')

s = get(0, 'ScreenSize');
figure('Position', [0 0 s(3) s(4)]);
figure(2)
plot(t,a2);
title('Acceleration vs Time(N-S)');
xlabel('time ');
ylabel('acceleration');
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
yt = linspace(-8 ,8 , 33);
yticks(yt);saveas(gcf,'N-S.png')

s = get(0, 'ScreenSize');
figure('Position', [0 0 s(3) s(4)]);
figure(3)
plot(t,a3);
title('Acceleration vs Time(Vertical)')
xlabel('time ')
ylabel('acceleration')
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
xt = linspace(0 ,30 , 61);
xticks(xt);
xtickangle(90);
yt = linspace(-8 ,8 , 33);
yticks(yt);
saveas(gcf,'Vertical.png')
