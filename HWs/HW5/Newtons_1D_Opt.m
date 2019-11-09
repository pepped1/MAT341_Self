function N = Newtons_1D_Opt(tol)
N = 0;
x = 0.25;
err = 1;
while err > tol
    N = N + 1;
    xtemp = x;
    x = x - (der(x,2)/der(x,3));
    err = abs(xtemp - x);
end
end
function val = der(x,f)
    if f == 1
        val = 0.5 - x * exp(-x^2);
    elseif f == 2
        val = 2*x^2*exp(-x^2)-exp(-x^2);
    else
        val = 6 * x *exp(-x^2)-4*x^3*exp(-x^2);
    end
end
%a) only took 6 iterations
%b) went to 736 iterations jesus christ