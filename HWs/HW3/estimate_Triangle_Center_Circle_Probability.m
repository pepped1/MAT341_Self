function prob = estimate_Triangle_Center_Circle_Probability(N)
count = 0;
for i = 1:N
    x = [];
    y = [];
    %this for loop creates the 3 points
    for i = 1:3
        x(i) = rand() * 4 - 2;
        randsign = rand();
        if randsign < .5
            y(i) = sqrt(4 - x(i)^2) * -1;
        else
            y(i) = sqrt(4 - x(i)^2);
        end
    end
    %checks to see if the origin falls within the triangle
    if (min(x) < 0) && (max(x) > 0)
        if (min(y) < 0) && (max(y) > 0)
            count = count +1;
        end
    end
end

prob = count/N;