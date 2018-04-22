fnames = readdir(pwd())
nums = []
for fname in fnames
    try
        num = parse(Int, fname)
        push!(nums, num)
    catch
    end
end

newnum = maximum(nums) + 1
mkdir("$newnum")
close(open("$newnum/code.jl", "w"))
