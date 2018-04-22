function ispalindrome(n)
    str = string(n)
    return str == reverse(str)
end

prods = [i * j for i in 100:999 for j in 100:999]
println(maximum(filter(ispalindrome, prods)))
