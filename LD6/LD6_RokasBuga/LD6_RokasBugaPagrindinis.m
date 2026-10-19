%% pirma uzd
K = input('Iveskite temperatura Kelvinais: ');

F = kelv2far(K);

disp(['Temperatura Farenheitais: ', num2str(F)]);

help kelv2far
%% 2 uzd

global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

skaiciuoti_sin
skaiciuoti_nuli

plot(x, y, 'y--*');
grid on;
title('Funkcija y(x)');
xlabel('x');
ylabel('y');

whos global

