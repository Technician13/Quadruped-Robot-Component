%%
clc;
clear all;
close all;

%%
A = [1, 1];
B = [-1, 5];
C = [-3, -1];

axis equal;
hold on;
grid on;
hold on;
plot([A(1), B(1), C(1), A(1)] , [A(2), B(2), C(2), A(2)], 'b', 'linewidth', 1.0);
hold on;

%%
a = sqrt((B(1) - C(1)) * (B(1) - C(1)) + ...
         (B(2) - C(2)) * (B(2) - C(2)));
b = sqrt((A(1) - C(1)) * (A(1) - C(1)) + ...
         (A(2) - C(2)) * (A(2) - C(2)));
c = sqrt((B(1) - A(1)) * (B(1) - A(1)) + ...
         (B(2) - A(2)) * (B(2) - A(2)));
     
%%
X = (a * A(1) + b * B(1) + c * C(1)) / (a + b + c);
Y = (a * A(2) + b * B(2) + c * C(2)) / (a + b + c);
plot(X, Y, 'r.', 'MarkerSize', 20);

%%
p = (a + b + c) / 2;
S = sqrt(p * (p - a) * (p - b) * (p - c));
radius = 2 * S / (a + b + c);
rectangle('Position', [X - radius, Y - radius, 2 * radius, 2 * radius], 'Curvature', [1,1], 'linewidth', 1);