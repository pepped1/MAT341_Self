function vary_Error_Tolerances_To_Compare()
warning off;
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];
goldIt = [];
parabIt = [];
newtonIt = [];
for i=1:length(errTolVec)
    goldIt = [goldIt golden_Search(errTolVec(i))];
    parabIt = [parabIt successive_Parabolic_Interpolation(errTolVec(i))];
    newtonIt = [newtonIt Newtons_1D_Opt(errTolVec(i))];
end

figure(1)
loglog(errTolVec, goldIt,'b','LineWidth',5)
hold on
loglog(errTolVec, parabIt,'r','LineWidth',5)
loglog(errTolVec, newtonIt,'k','LineWidth',5)
hold off
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Golden Search', 'Succ. Para. Interp.', 'Newton Method')

figure(2)
semilogx(errTolVec, goldIt,'b','LineWidth',5)
hold on
semilogx(errTolVec, parabIt,'r','LineWidth',5)
semilogx(errTolVec, newtonIt,'k','LineWidth',5)
hold off
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Golden Search', 'Succ. Para. Interp.', 'Newton Method')
end
%for the less accurate tolerances, the newtons method converges faster

%even when you increase the accuracy threshold, newtons method always
%reigns supreme

%if they started with different starting guesses, they could totally
%change how fast they converge