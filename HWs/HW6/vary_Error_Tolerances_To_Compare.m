function vary_Error_Tolerances_To_Compare()
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11];
iter1 = [];
iter2 = [];
for i = 1:length(errTolVec)
    iter1 = [iter1 Gradient_Descent_1(errTolVec(i),1)];
    iter2 = [iter2 Gradient_Descent_2(errTolVec(i))];
    %initiallizing arrays
end

figure(1)
%loglog graph
loglog(errTolVec, iter1,'b','LineWidth',5)
hold on
loglog(errTolVec, iter2,'r','LineWidth',5)
hold off
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Fixed Step', 'Barzilai-Borwein')

figure(2)
%horizontal axis log
semilogx(errTolVec, iter1,'b','LineWidth',5)
hold on
semilogx(errTolVec, iter2,'r','LineWidth',5)
hold off
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Fixed Step', 'Barzilai-Borwein')

end
%a) fixed step seems to converge slightly faster than barzilai-borwein
%b) if we change gamma to .5, fixed step converges slower that barzilai-borwein
%for all tolerances.
%c) barzilai-borwein doesn't need a gamma input
%d) i would choose barzilai-borwein, as 1) it doesn't need an input and 2)
%it it's better at converging for lower tolerances
