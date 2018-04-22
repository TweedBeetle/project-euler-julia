module Tools
    using Primes, Permutations, StatsBase, Combinatorics

    function divisors(n)
        divfactors = Set(combinations(factor(Vector, n)))
        divs = [prod(f) for f in divfactors]
        push!(divs, 1)
        return divs
    end

    function replaceall(s, old::Array, substitute::String)
        ns = copy(s)
        for e in old
            ns = replace(s, e, substitute)
        end
        return ns
    end

    function replaceall(s, old::Array, substitutes::Array)
        ns = copy(s)
        for i in eachindex(old)
            ns = replace(s, old[i], substitutes[i])
        end
        return ns
    end
end
