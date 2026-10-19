%% 1 UZDUOTIS
%% a) f(x,y) = 1 - 2x^2 - 3y^2

x = linspace(-2, 1, 100);
y = linspace(-2, 1, 100);

[X, Y] = meshgrid(x, y);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;

surf(X, Y, Z);

shading interp;
colormap(parula);

view(78, 78);

title('f(x,y) = 1 - 2x^2 - 3y^2');

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

grid on;


%% b) f(x,y) = sin(x^2 + y^2)

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

[X, Y] = meshgrid(x, y);

Z = sin(X.^2 + Y.^2);

figure;

surf(X, Y, Z);

shading interp;
colormap(jet);

view(45, 45);

title('f(x,y) = sin(x^2 + y^2)');

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

grid on;

%% Papildoma

x = -2:0.05:2;
y = -2:0.05:2;

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);


%% a) Pavirsiaus grafikas su apsvietimu

figure;

surf(X, Y, Z);

shading interp;
camlight;

title('Pavirsiaus grafikas su apsvietimu');

xlabel('x');
ylabel('y');
zlabel('z');

grid on;


%% b) Pavirsiaus grafikas su konturu pagrindo plokstumoje

figure;

surfc(X, Y, Z);

title('Pavirsiaus grafikas su konturu');

xlabel('x');
ylabel('y');
zlabel('z');

grid on;


%% c) Paprastas pavirsiaus grafikas

figure;

surf(X, Y, Z);

title('Paprastas pavirsiaus grafikas');

xlabel('x');
ylabel('y');
zlabel('z');

grid on;