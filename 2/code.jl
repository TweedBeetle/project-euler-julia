fibs = [1, 1];
n = 2
sum = 0;
while n < 4e6
    n = fibs[length(fibs)] + fibs[length(fibs) - 1]
    push!(fibs, n);
    if n % 2 == 0
        sum += n
    end
end
println(sum)
