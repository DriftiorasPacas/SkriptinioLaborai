
function skaiciuoti_sin

global x y

for i = 1:length(x)
    if x(i) ~= 0
        y(i) = sin(x(i))/x(i);
    end
end

end
