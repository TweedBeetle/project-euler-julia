# sum(digits(big(2) ^ 1000))

digits = [1]

for i in 1:1000
    digits = digits .* 2
    for ind in 1:length(digits)
        if digits[ind] >= 10
            digits[ind] -= 10
            if ind == length(digits)
                push!(digits, 1)
            else
                digits[ind + 1] += 1
            end
        end
    end
end

println(sum(digits))
