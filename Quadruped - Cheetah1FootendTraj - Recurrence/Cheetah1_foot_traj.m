%%
clear all
close all
clc

%%
% position of hip
pos_hip_x = 200;
pos_hip_y = 1000;

%%
% swing traj
x = [-200 ...
     -280.5 ...
     -300 ...
     -300 ...
     -300 ...
     0 ...
     0 ...
     0 ...
     303.2 ...
     303.2 ...
     282.6 ...
     200];
 

y_F = [-500 ...
       -500 ...
       -411.06 ...
       -411.06 ...
       -411.06 ...
       -411.06 ...
       -411.06 ...
       -371.45 ...
       -371.45 ...
       -371.45 ...
       -500 ...
       -500];

for i = 1 : 12
    x(i) = x(i) + 200;
    y_F(i) = y_F(i) + 500;
end

%%
plot(x, y_F, '-o', 'linewidth', 0.5);
hold on;
axis equal;
hold on;
[point_x_swing, point_y_swing] = bezier_curve(x, y_F);

%%
% stance traj
Si = linspace(0, 1, 80);
x_stance = 0.85 * 200 * (-2 * Si + 1) + 200;
y_stance = -30 * sin(pi * Si);

x_stance = [400 x_stance 0];
y_stance = [0 y_stance 0];
plot(x_stance, y_stance, 'linewidth', 2);

%%
% plot
[x2, y2] = solvepoint(pos_hip_x, pos_hip_y, point_x_swing, point_y_swing, pos_hip_y);
for i=1:80
    hold on;
    plot([pos_hip_x, x2(i), point_x_swing(i)], [pos_hip_y,y2(i), point_y_swing(i)], 'color', 'black');
    pause(0.1);
    hold on;
end

[x2, y2] = solvepoint(pos_hip_x, pos_hip_y, x_stance, y_stance, pos_hip_y);
for i=1:82
    hold on;
    plot([pos_hip_x, x2(i), x_stance(i)], [pos_hip_y,y2(i), y_stance(i)], 'color', 'black');
    pause(0.1);
    hold on;
end
