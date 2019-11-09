function N = Newtons_2D_Opt(tol)
N = 0;
x = [-4.5; 4.5];
err = 1;
while err > tol
    N = N + 1;
    xtemp = x;
    x = x - inv(H(x))*grad(x);
    err = sqrt(dot((x - xtemp)',(x - xtemp)));
end
minima = -(sin(x(1))+cos(x(2)))
end

function val = grad(x)
    val = [-cos(x(1)); sin(x(2))];
end
function val = H(x)
    val = [sin(x(1)) 0; 0 cos(x(2))];
end
%it only took 5 iterations to find -2 as the minima

%took 4 iterations to also find -2 as the minima