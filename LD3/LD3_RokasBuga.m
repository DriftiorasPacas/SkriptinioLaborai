%% 1 UZDUOTIS

x = 0:0.1:2*pi;
y = x.^3 + tan(x);

figure
plot(x, y, 'bo')
axis([min(x) max(x) min(y) max(y)])
xlabel('x')
ylabel('f(x)')
title('f(x) = x^3 + tan(x)')
legend('x^3 + tan(x)', 'Location', 'best')
grid on


x = 0:0.1:2;

y1 = exp(x);
y2 = exp(3*x);
y3 = exp(5*x);

figure
plot(x, y1, 'r', x, y2, 'g', x, y3, 'b')
axis([min(x) max(x) min([y1 y2 y3]) max([y1 y2 y3])])
xlabel('x')
ylabel('f(x)')
title('Eksponentinės funkcijos')
legend('e^x', 'e^{3x}', 'e^{5x}', 'Location', 'best')
grid on

%% 2 UZDUOTIS

pazymiai = [
    5 8 4 2;
    4 8 9 3;
    4 6 9 5;
    3 4 6 2;
    5 8 6 8;
    5 5 6 7
];

studentai = {'Matas', 'Jonas', 'Tomas', 'Lukas', 'Petras', 'Rokas'};

figure

subplot(2,1,1)

bar(pazymiai)

xlabel('Studentai')
ylabel('Pažymys')
title('a) Studentų egzaminų rezultatai')

xticks(1:6)
xticklabels(studentai)

ylim([0 10])

legend('1 egz.', '2 egz.', '3 egz.', '4 egz.', 'Location', 'best')

grid on


subplot(2,1,2)

bar(pazymiai, 'stacked')

xlabel('Studentai')
ylabel('Pažymių suma')
title('b) Studentų egzaminų rezultatai')

xticks(1:6)
xticklabels(studentai)

ylim([0 40])

grid on

%% 3 UZDUOTIS

A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;

t = 0:0.002:1.5;

s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
s = s + n;

s1 = s(s > U1);
t1 = t(s > U1);

s2 = s;
s2(abs(s2) < U2) = 0;

didziausia = max(s2);
maziausia = min(s2);

max_ind = find(s2 == didziausia);
min_ind = find(s2 == maziausia);

figure

subplot(2,1,1)

plot(t, s, 'k-')
hold on

plot(t, s2, 'b:')

yline(U1, 'r--')
yline(U2, '--')
yline(-U2, 'g--')

xlabel('Laikas, s')
ylabel('Įtampa, V')
title('Pradinis ir filtruotas signalai')

legend('Pradinis signalas', 'Filtruotas signalas', ...
       'U1', 'U2', '-U2', 'Location', 'southeast')

grid on
axis([min(t) max(t) min(s)-1 max(s)+1])

hold off


subplot(2,1,2)

stem(t1, s1)
hold on

plot(t(max_ind), s2(max_ind), 'ro', 'MarkerSize', 8)
plot(t(min_ind), s2(min_ind), 'gd', 'MarkerSize', 8)

xlabel('Laikas, s')
ylabel('Įtampa, V')
title('Signalo reikšmės, viršijančios U1 ribą')

legend('Reikšmės virš U1', 'Maksimali įtampa', ...
       'Minimali įtampa', 'Location', 'southeast')

grid on
axis([min(t) max(t) min(s)-1 max(s)+1])

hold off