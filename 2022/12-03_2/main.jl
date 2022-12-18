#=
main:
- Julia version: 1.8.2
- Author: melmello
- Date: 2022-12-13
=#
rucksack = []
open("input.txt") do file
    total = 0
    row_count = 0
    ln1 = []
    ln2 = []
    ln3 = []
    for ln in eachline(file)
        println(row_count)
        println(ln)
        if row_count == 0
            ln1 = split(ln, "")
            row_count += 1
        elseif row_count == 1
            ln2 = split(ln, "")
            row_count += 1
        elseif row_count == 2
            ln3 = split(ln, "")
            char_ok = intersect(ln1, ln2, ln3)
            char_ok = only(char_ok[1])
            if islowercase(char_ok)
                total += Int(codepoint(char_ok))-Int(codepoint('a')) + 1
            else
                total += Int(codepoint(char_ok))-Int(codepoint('A')) + 27
            end
            row_count = 0
            char_ok = ""
            ln1 = []
            ln2 = []
            ln3 = []
        end
    end
    println(total)
end