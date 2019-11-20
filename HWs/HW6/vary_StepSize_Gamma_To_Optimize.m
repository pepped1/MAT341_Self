function vary_StepSize_Gamma_To_Optimize()
iterations = [];
stepSize = [];
for i = .1:.01:1.5
    stepSize = [stepSize ; i];
    iterations = [iterations ; Gradient_Descent_1(1e-10,i)];
end
semilogx(stepSize, iterations, 'b', 'LineWidth', 5)
xlabel('gamma (step-size)')
ylabel('# of iterations')
legend('Fixed Step')
end
%the best step size for -(sin(x) + cos(y)) seems to be 1
