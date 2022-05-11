%%
clc;
clear all;
close all;

%%
% variable declaration
syms x y t p q r k;

%%
% semi-elliptic trajectory
x(t) = 50 * pi * cos(4 * pi * t) + 50 * pi;
y(t) = 100 *sin(4 * pi * t);
x = eval(x);
y = eval(y);
ezplot(x, y, [0, 0.25]);
grid on;
hold on;

%%
% cycloid trajectory
p(k) = r * (4 * pi * k - sin(4 * pi * k));
q(k) = r * (1 - cos(4 * pi * k));
r = 50;
p = eval(p);
q=eval(q);
ezplot(p, q, [0, 0.5]);

%%
% plot
title('Ellipse  &  Cycloid', 'FontSize', 16, 'FontWeight', 'bold');
xlabel('Step length', 'FontWeight', 'bold');
ylabel('Height of leg lifts', 'FontWeight', 'bold');
legend('Ellipse', 'Cycloid', 'FontWeight', 'bold');