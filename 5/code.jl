# println(lcm(1:20))

d = Dict()
for i in 1:20
    factors = factor(i)
    for k in keys(factors)
        if k in keys(d)
            d[k] = max(d[k], factors[k])
        else
            d[k] = factors[k]
        end
    end
end

n = 1

for factor in d
    println(factor)
    n *= factor[1] ^ factor[2]
end

println(n)
