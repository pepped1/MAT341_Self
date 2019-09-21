function plot_nested_times()
N = [1:1:10 20:10:100 125 150 175 200 225 250];
Y=[];
for i=1:length(N)
    Y(i) = calculate_nested_for_loop_time(N(i));
end

loglog(N, Y, 'm', 'LineWidth', 5);
xlabel('Number of Values');
ylabel('Time');
