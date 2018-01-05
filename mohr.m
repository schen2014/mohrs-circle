close all; clc;

r = 0.251607396;
x = 0.1417026505;
theta = 0:pi/50:2*pi;
radius = 0.251607396;

xunit = r*cos(theta) + x;
yunit = r*sin(theta);

ex = 0.03130063984;
ey = 0.2521046611;
gammaxy = 0.4521152021;

epsilon1 = [ey, ex];
epsilon2 = [-gammaxy/2, gammaxy/2];


line_array1 = [x - radius, x + radius];
line_array3 = [radius, -radius];
line_array2 = [0, 0];
line_array4 = [x, x];


figure(1)
plot(xunit,yunit); hold on;
plot(0.1417026505, 0, 'r*');
txt1 = '   Center (0.142, 0)';
text(0.1417026505, 0.03, txt1);
plot(0.3933100465, 0, 'r*');
plot(-0.1099047455, 0, 'r*');
txt2 = '   Pr. Strain (0.393, 0)';
txt3 = 'Pr. Strain (-0.110, 0)  ';
text(0.3933100465, 0, txt2);
text(-0.1099047455, 0, txt3,'HorizontalAlignment', 'right');
plot(0.142, 0.251607396, 'r*');
txt4 = '   \gamma_{max} (0.142, 0.252)';
text(0, 0.2641899507, txt4);
plot(line_array1, line_array2, '--');
plot(line_array4, line_array3, '--');
plot(0.142, -0.251607396, 'r*');
txt5 = '   \gamma_{max} (0.142, -0.252)';
text(0, -0.2641899507, txt4);
plot(epsilon1, epsilon2, '--'); 
txt6 = '                 (\epsilon_x, 1/2*\gamma)';
txt7 = '       (\epsilon_y, 1/2*\gamma)';
text(0.2521046611, -gammaxy/2, txt7);
text(-0.2, gammaxy/2, txt6);
plot(0.03130063984, gammaxy/2, 'r*');
plot(0.2521046611, -gammaxy/2, 'r*');
grid on;
xlim([-0.3 0.4]);
ylim([-0.3 0.4]);
axis equal;
title('Experimental Mohrs Circle');
xlabel('Normal Strain');
ylabel('Shear Strain');
