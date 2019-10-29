function vary_Error_Tolerances_To_Compare()
warning off;
errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];
goldIt = [];
parabIt = [];
for i=1:length(errTolVec)
    goldIt = [goldIt golden_Search(errTolVec(i))];
    parabIt = [parabIt successive_Parabolic_Interpolation(errTolVec(i))];
end

figure(1)
loglog(errTolVec, goldIt,'b','LineWidth',5)
%LineWidth = 5;
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Golden Search')

figure(2)
semilogx(errTolVec, parabIt, 'r','LineWidth',5)
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Succ. Para. Interp.')
end
%the successive parabolic interpolation is still faster even at less
%accurate tolerances

%when you increase the accuracy threshold, the successive parabolic
%interpolation does well until it gets very, very, very small, which then
%it starts to go wild. i'm not quite sure why it does that, but i'm
%assuming it has to do with rounding errors and computational innaccuracies