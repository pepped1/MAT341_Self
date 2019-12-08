function fit_Polynomial_Series()
N=50;
xData=linspace(-2*pi,2*pi,N);
yData=cos(xData)';
for i = 1:length(xData)
    A(i,:) = [1 xData(i) xData(i)^2 xData(i)^3 xData(i)^4 xData(i)^5 xData(i)^6 xData(i)^7 xData(i)^8 xData(i)^9  xData(i)^10 xData(i)^11];
    %setting up A
    fxB(i) = 0;
    %setting up array for f(x,B)
end
B = inv(transpose(A)*A) * transpose(A)*yData;
for i = 1:length(xData)
   for j = 1:12
       fxB(i) = fxB(i) + B(j) * xData(i)^j;
       %filling up array of values from model function
   end
end
ltwo = sqrt(transpose(yData-A*B)*(yData-A*B))

%plot(xData,yData,'.','b','LineWidth',6);
%couldnt figure out how to use plot for scatter plot
sz=6;
c='b';
scatter(xData, yData, sz, c, 'filled')
hold on
plot(xData,fxB,'r','LineWidth',4);
hold off
xlabel('xData')
ylabel('yData (cos(xData))')
legend('Data', 'Best Poly Fit')
%increasing the # of data points decreases the residual
%N = 10, .4288, N = 50, .0088, N = 250, .0186
%we have seen cos(x) written as a polynomial in a taylor series
%the coefficients were ((-1)^n)/(2n)!
%i do not know how to decipher a pattern in the coefficients at 250