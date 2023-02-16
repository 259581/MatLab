clear;
clc;
close all
h = 0.1;
t = 0:h:100;
teta_deg = 5.5; %degrees
teta_rads = deg2rad(teta_deg); %radians
g = 9.81; %acceleration of gravity
l = 10; %length
m = 0.01; %mass

analitycal = [];
linear = [];

v2 = [];
v2(1) = 0;
numeric = [];
numeric(1) = teta_rads;

% analitycal method – task 1,2
for i = 1:1:length(t)
analitycal(i) = teta_rads*cos(t(i)/(sqrt(g/l)));
end

% analitycal method – task 3
for i = 1:1:length(t)
linear(i) = (-g/l)*analitycal(i);
end

% numeric method
for i = 2:1:length(t)
v2(i) = v2(i-1) - h * (g/l) * sin(numeric(i-1));
numeric(i) = numeric(i-1) + v2(i) * h;
end

figure(1);
hold on;
plot(t, analitycal, '--r');
plot(t, numeric, '--g');
xlabel('time');
ylabel('location');
legend('Analitycal', 'Numeric');
diff = [];
diff = abs(numeric - linear);
figure(2);
plot(t, diff,'r.');
title('difference');
xlabel('time');