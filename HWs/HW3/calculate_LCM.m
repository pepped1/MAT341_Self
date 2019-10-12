function lcm_val = calculate_LCM(x,y)
lcm = max(x, y);
while(true)
    if (mod(lcm,x) == 0) && (mod(lcm,y)==0)
        lcm_val = lcm;
        break
    end
    lcm = lcm + 1;
end