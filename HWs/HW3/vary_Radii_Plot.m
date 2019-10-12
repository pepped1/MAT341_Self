function vary_Radii_Plot()
%approximately radius size .15 has probability .5, .35 has probability .1,
%and .45 has probability .01
rVec = [.01:.005:.1 .1:.01:.5];

for i=1:length(rVec)
    Y(i) = estimate_Coin_In_Square_Probability(rVec(i),1e5);
end

plot(rVec,Y);
xlabel('Radius size');
ylabel('Radius probability');