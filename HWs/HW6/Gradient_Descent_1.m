function N = Gradient_Descent_1(tol,gamma)
err = 1;
N = 0;
x = [1.0;1.5];
while err > tol
    xtemp = x;
    %setting x^k
    x = x - gamma * grad(x);
    %finding x^k+1
    %dont need to find gamma, as its given
    N = N + 1;
    err = sqrt(dot(transpose(x-xtemp),(x-xtemp)));
    %usual err formula
end
end

function val = grad(x)
%gradient of given function
%f(x) = -(sin(x)+cos(y))
val = [-cos(x(1)); sin(x(2))];

end
%a) 35 iterations
%b) 12 iterations
%c) 34 iterations