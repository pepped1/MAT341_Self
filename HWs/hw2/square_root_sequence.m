function val = square_root_sequence(m,n)
exval=0;
val=0;
for i = 1:n
    exval=val;
    val = sqrt(m)*(-1);
end
val = sqrt(m-sqrt(m+sqrt(m-sqrt(m+sqrt(m-sqrt(m+sqrt(m)))))))

%limit for 13 = 3
%limit for 31 = 5
%limit for 43 = 6