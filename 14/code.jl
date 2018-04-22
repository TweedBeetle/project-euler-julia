lendict = Dict(1 => 1)

function collatzlen(n)
    if haskey(lendict, n)
        return lendict[n]
    else
        lendict[n] = collatzlen(cltz(n)) + 1
    end
end

cltz = n -> n % 2 ==0 ? n / 2 : 3n + 1


@time display(findmax(broadcast(collatzlen, 1:1_000_000)))
