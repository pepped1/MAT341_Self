function N = successive_Parabolic_Interpolation(tol)
N = 0;
x1 = 0;
x2 = 0.6;
x3 = 2;
a = 0;
b = 2;
err = 1;
while err > tol
    N = N+1;
    y1 = f(x1);
    y2 = f(x2);
    y3 = f(x3);
    A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
    B = [y1; y2; y3];
    coeffs = linsolve(A,B);
    vert = -coeffs(2)/(2*coeffs(1));
    x3 = x2;
    x2 = x1;
    x1 = vert;
    err = abs(x3-x1);
end
end

function y = f(x)
y = 0.5 - x*exp(-x^2);
end
%it only takes 8 iterations to achieve 1e-8 accuracy

%when i change x3 to 2, iterations changes to 12.
%and matlab eventually issues a warning about the matrix that is trying to solve for
%the parabola, saying the "matrix is close to singular or badly scaled.
%results may be inaccurate." i think it means we got pretty darn close to
%the proper minimum pretty quickly