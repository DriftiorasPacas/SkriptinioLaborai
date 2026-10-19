%% 1 UZDUOTIS - STRUKTUROS

studentai(1).vardas = 'Rokas';
studentai(1).pavarde = 'Buga';
studentai(1).grupe = 'EDIF-25/2';
studentai(1).pazymiai = [8 9 7; 9 10 8];

studentai(2).vardas = 'Petras';
studentai(2).pavarde = 'Petraitis';
studentai(2).grupe = 'EK-1';
studentai(2).pazymiai = [7 8 9; 8 9 10];

studentai(3).vardas = 'Mantas';
studentai(3).pavarde = 'Mantaitis';
studentai(3).grupe = 'EK-2';
studentai(3).pazymiai = [5 8 10; 10 9 8];

disp('Visi studentai:');
disp(studentai);

studentai(3).pazymiai(1,1) = 10;

disp('Trecio studento pazymiai po pakeitimo:');
disp(studentai(3).pazymiai);

%% 2 UZDUOTIS - SRAUTO VALDYMAS

format bank

disp('Paskola      Bankas 10%     Bankas 15%     Bankas 20%');

for suma = 10000:1000:20000

    p10 = suma * 1.10 / 12;
    p15 = suma * 1.15 / 12;
    p20 = suma * 1.20 / 12;

    disp([suma p10 p15 p20]);

end

%% 3 UZDUOTIS

x = input('Iveskite x: ');
y = input('Iveskite y: ');

for i = 1:20

    m = randi([1 x]);
    n = randi([1 y]);

    A = zeros(x,y);

    A(m,n) = NaN;

    disp(A);

    pause(0.5);
    clc;

end



