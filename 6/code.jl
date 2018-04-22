n = 100
nums = Vector(1:n)
sumofsquares = sum(nums .^ 2)
squareofsum = sum(nums) ^ 2

diff = squareofsum - sumofsquares
println(diff)
