using Primes, Permutations, StatsBase, Combinatorics

function divsum(n)
    divfactors = Set(combinations(factor(Vector, n)))
    return sum([prod(f) for f in divfactors]) + 1 - n
end

function getamicable(n)
    if isprime(n)
        return 0
    end
    s = divsum(n)
    dsums = divsum(s)
    if s != n && dsums == n
        return s
    else
        return 0
    end
end

s = Int(0)

for n in 2:9999
    s += getamicable(n)
end


println(s)
