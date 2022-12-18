#=
main:
- Julia version: 1.8.2
- Author: melmello
- Date: 2022-12-13
=#
rucksack = []
open("input.txt") do file
    total = 0
    for ln in eachline(file)
        size = div(sizeof(ln), 2)
        substring_1 = first(ln, size)
        substring_2 = last(ln, size)
        char_seen = []
        for c in substring_1
            if (occursin(c, substring_2) & !(c in char_seen))
                append!(char_seen, c)
                if islowercase(c)
                    total += Int(codepoint(c))-Int(codepoint('a')) + 1
                else
                    total += Int(codepoint(c))-Int(codepoint('A')) + 27
                break
                end
            end
        end
    end
    println(total)
end