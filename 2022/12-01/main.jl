#=
main:
- Julia version: 1.8.2
- Author: melmello
- Date: 2022-12-11
=#
elves = []
open("input.txt") do file
    weight = 0
    for ln in eachline(file)
        if length(ln) > 0
            weight += parse(Int64, ln)
        end
        if length(ln) == 0
            append!(elves, weight)
            weight = 0
        end
    end
    println(elves)
    println(findmax(elves))
end