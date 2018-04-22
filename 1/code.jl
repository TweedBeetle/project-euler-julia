sum = 0;
for v in 1:999
    if (v % 3 == 0) || (v % 5 == 0)
        sum += v
    end
end
println(sum)
