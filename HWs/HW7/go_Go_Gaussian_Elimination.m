function OpCount = go_Go_Gaussian_Elimination(N)
A=rand(N,N);
B=A;
abc = 0;
OpCount = 0;
for i=1:N
    j=1;
    %this if statement gets rid of the numbers to the left of the pivots
    if j < i
        while A(i,j) ~= A(i,i)
            if A(i,j) ~= 0
                A(i,:) = A(i,:) - A(j,:) * A(i,j);
                OpCount = OpCount + 2*(N-j+1);
                %counts all of the row multiplication and subtraction
            end
            j=j+1;
        end
    end
    %this if statement checks if the pivot = 0
    if A(i,i) == 0
        k = i;
        while abc == 0
            k = k + 1;
            if A(k,i) ~= 0
                temp = A(k,:);
                A(k,:) = A(i,:);
                A(i,:) = temp;
                %swapping rows
                abc = 1;
            elseif k == N
                abc = 1;
                %to prevent looping forever if it cant find a replacement
                %row
            end
            
        end
        abc = 0;
        i = i - 1;
        %takes another try
    else
        A(i,:) = (A(i,:))/(A(i,i)); 
        OpCount = OpCount + (N-i+1);
        %diving the whole row by the pivot
    end
    
end
for i=1:N
    for j=1:N
        if (j > i) && (A(i,j) ~= 0)
            A(i,:) = A(i,:) - A(j,:) * A(i,j);
            OpCount = OpCount + 2*(N-j+1);
        end
    end
end