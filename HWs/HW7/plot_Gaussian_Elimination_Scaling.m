function plot_Gaussian_Elimination_Scaling()
NVec = 2:1:100;
OCvec = [];
for i = 1:length(NVec)
    OCvec = [OCvec go_Go_Gaussian_Elimination(NVec(i))];
end
figure(1)
loglog(NVec, OCvec,'b','LineWidth',5)
xlabel('Size of Matrix, N')
ylabel('Operation Count')

figure(2)
plot(NVec, OCvec,'b','LineWidth',5)
xlabel('Size of Matrix, N')
ylabel('Operation Count')
%judging by the loglog graph, it looks linear, but looking at the normally
%plotted graph, it looks quadratic. its not linear, but its certainly not
%quite exponential. i might have just done the operator count wrong though.