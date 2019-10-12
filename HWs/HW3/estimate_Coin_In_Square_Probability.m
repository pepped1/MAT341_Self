function prob = estimate_Coin_In_Square_Probability(r,N)
%1e5 seems reasonable, as it doesn't take
%long to compute

%this is more difficult than the coin flip
%as you have to set boundaries for this problem

%this problem was similar to a problem I had to do in csc220
%so all I had to do was sketch it out and it wasn't very hard
count = 0;
for i = 1:N
    x = rand();
    y = rand();
    if (x-r > 0) && (x + r < 1)
        if (y-r > 0) && (y+r < 1)
            count = count + 1;
        end
    end
end
prob = count/N;

