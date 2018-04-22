include("tools.jl")

println(readdir(pwd()))
println(pwd())
if !endswith(pwd(), "22")
 cd("22")
end
open("names.txt") do f
    s = readstring(f)
    s = replaceall(s, ["\"", "\\r", "\\n"], "")
    names = split(s, ",")
    println(names)
end
