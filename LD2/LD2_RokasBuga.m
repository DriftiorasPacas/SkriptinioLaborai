%% 1 UZDUOTIS

A = -pi/2:0.5:3*pi;
B = A.^2;
C = sin(A + B);
D = C';

%% 2 UZDUOTIS
Z = rand(3,3);
Z(:,2) = [];
Z = Z';

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

s2 = s;
s2(abs(s2) < U2) = 0;

nefiltruoto_dydis = length(s);

atrinktu_dydis = length(s1);

didziausia = max(s2);
maziausia = min(s2);

%% Papildoma

A = input('Iveskite 10 elementu vektoriu A: ');

B = [A(end:-1:6) A(1:5)];

disp('Vektorius B yra:')
disp(B)