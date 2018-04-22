range = 1:500
for a in range, b in range
    c = 1000 - (a + b)
    if a + b + c == 1000 && a ^ 2 + b ^ 2 == c ^ 2
        println(a * b * c)
        break
    end
end
