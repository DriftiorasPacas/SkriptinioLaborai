% Rokas Būga EDIF-25/2 09/19
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')
%% 

% 8 uzd
help sin
help plot
help title

doc sin
doc plot
doc title
%% 

% 9 uzd
help linspace
help size
help max
%% 

% papildoma uzd
N = 2;

V = N+1:0.5:N+4;

A = [N N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8];

a = A(3,2);

b = A(2:3,1:2);

c = A([1 3],[1 3]);

V = V(1:3);
B = [A V'];
