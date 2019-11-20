function N = Gradient_Descent_2(tol)
N = 0;
err = 1;
gamma = .5;
x = [1;1.5];
while err > tol
    N = N+1;
    xtemp = x;
    x = x - gamma * grad(x);
    gamma = abs((x - xtemp)'*(grad(x)-grad(xtemp)))/(sqrt(dot(transpose(grad(x)-grad(xtemp)),(grad(x)-grad(xtemp)))))^2;
    err = sqrt(dot(transpose(x - xtemp),(x - xtemp)));
end
end
function val = grad(x)
%f(x) = -(sin(x)+cos(y))
val = [-cos(x(1)); sin(x(2))];

end
%a) 6 iterations
%b) 7 iterations