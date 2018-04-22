using Primes, Permutations, StatsBase, Combinatorics

n = 0
c = 1
while true
    n += c

    # if length(Set(combinations(factor(Vector, n)))) > 500
    #     break
    # end

    vals = values(countmap(factor(Vector, n)))
    vec = Vector(collect(vals))
    if prod(vec .+ 1) > 500
        break
    end

    c += 1
end

println(n)
