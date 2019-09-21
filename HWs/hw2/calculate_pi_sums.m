function calculate_pi_sums()
tol = 10^(-6);
err = 1;
N=-1;

%A
while err>tol
    sum = 0;
    N=N+1;
    for i=0:N
        sum = sum + (6/sqrt(3))*(((-1)^i)/(3^i*(2*i+1)));
    end
    sum
    err = abs(sum-pi);
end
str = 'its b time'
%B
err=1;
N=-1;
while err>tol
    sum = 0;
    N=N+1;
    for i = 0:N
        sum = sum + (16*(((-1)^i)/((5^(2*i+1))*(2*i+1))))-(4*(((-1)^i)/((239^(2*i+1))*(2*i+1))));
    end
    sum
    err=abs(sum-pi);
end