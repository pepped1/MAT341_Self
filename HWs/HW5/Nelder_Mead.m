function N = Nelder_Mead(tol)
err = 1;
N = 0;
x1 = [0.35 2.8];
x2 = [4 4];
x3 = [4.5 4.5];
xvec = [x1; x2; x3];
fvec = [f(x1) f(x2) f(x3)];
[fsorted, indsvec] = sort(fvec);
bestV = [xvec(indsvec(1),1) xvec(indsvec(1),2)];
midV = [xvec(indsvec(2),1) xvec(indsvec(2),2)];
worstV = [xvec(indsvec(3),1) xvec(indsvec(3),2)];
while err > tol
    N = N + 1;
    midpointV = (midV + bestV)/2;
    reachV = midpointV + (midpointV - worstV);
    if f(reachV) < f(worstV)
        worstV = reachV;
    else
        xc = (midpointV + worstV)/2;
        if f(xc) < f(worstV)
            worstV = xc;
        else
            midV = (midV + bestV)/2;
            worstV = (worstV + bestV)/2;
        end
    end
    err = abs(f(bestV) - f(worstV));
end
f(bestV)
%sin(bestV(1))
%cos(bestV(2))
end

function val = f(x)
val = -(sin(x(1))+cos(x(2)));
end
%a) it took 28 iterations
%b) it converges at -1.8751, with x = .9975 and y = .8776
%it doesnt look like 1e-8 accuracy as they're both not 1
%c) it took 24 iterations and it located -1.979, maybe because the z value
%is bigger so it works better? idk
%d) it finds .5993 as its minima. not great