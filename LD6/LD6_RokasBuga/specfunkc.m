
function rezultatas = specfunkc(varargin)

if nargin == 1
    a = varargin{1};
    rezultatas = a^2;

elseif nargin == 2
    a = varargin{1};
    b = varargin{2};
    rezultatas = a^2 + b^3;

else
    error('Iveskite viena arba du argumentus');
end

end
    