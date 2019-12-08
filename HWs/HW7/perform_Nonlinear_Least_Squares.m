function perform_Nonlinear_Least_Squares()
warning off;
N = 2500;
err = 1;
data = give_NonLinear_Least_Squares_Data(N);
x = data(:,1);
y = data(:,2);
tol = 1e-5;
B = [1 0.5 0.3]';
minExpy = 1000;
fxB = [];
while err > tol
    for i = 1:N
        expy = (exp(-(x(i)-B(2)))^2)/(2*B(3)^2);
        if expy < minExpy
            minExpy = expy;
        end
        dyVec(i,1) = expy * B(1);
        J(i,1) = expy;
        J(i,2) = B(1) * ((x(i)-B(2))/B(3)^2) * expy;
        J(i,3) = B(1) * (((x(i)-B(2))^2)/B(3)^2) * expy;
    end
    
    dbVec = inv(transpose(J) * J) * transpose(J) * dyVec;
    Btemp = B;
    B = B + dbVec;
    err = sqrt(dot(transpose(B-Btemp),(B-Btemp)));
end
ltwo = sqrt(transpose(y-minExpy)*(y-minExpy))

sz=20;
c='b';
scatter(x, y, sz, c, 'filled')
hold on
plot(x,fxB,'r','LineWidth',4);
hold off
xlabel('xData')
ylabel('yData')
legend('Data', 'Model Fit')
