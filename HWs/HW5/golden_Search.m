function N = golden_Search(tol)
N = 0;
a = 0;
b = 2;
c = (sqrt(5)-1)/2;
%wasnt quite sure what to do with the step thing you gave us
err = 1;
x1 = a + c;
x2 = b - c;
while err > tol
    N = N + 1;
    if f(x1) > f(x2)
        a = x1;
    else
        b = x2;
    end
    c = (b-a)/3;
    x1 = a + c;
    x2 = b - c;
    err = b - a;
end
end

function y = f(x)
y = 0.5 - x*exp(-x^2);
end

%it takes 48 iterations to achieve 1e-8 accuracy