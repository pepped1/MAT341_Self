function fit_Sine_Series()
N=500;
xData=linspace(-pi,pi,N);
yData=((0.25*xData.^2).* cos(xData).^4.* sin(xData).^7 )';
M=40;
for i=1:length(xData)
    for j=1:M
        A(i,j) = xData(1,i)^(j-1);
        %(row,col)
    end
    fxB(i) = 0;
end
B = inv(transpose(A)*A) * transpose(A)*yData;
for i = 1:length(xData)
   for j = 1:M
       fxB(i) = fxB(i) + B(j) * sin(xData(i)*j);
       %filling up array of values from model function
   end
end
ltwo = sqrt(transpose(yData-A*B)*(yData-A*B))

sz=6;
c='b';
scatter(xData, yData, sz, c, 'filled')
hold on
plot(xData,fxB,'r','LineWidth',4);
hold off
xlabel('xData')
ylabel('yData')
legend('Data', 'Best Sine Series Fit')
%increasing M lowers the residual as well. M = 5, .1970, M = 10, .1055, M =
%20, .0244, M = 40, .0571
%this series is called the fourier sine series
