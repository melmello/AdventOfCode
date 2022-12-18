#=
main:
- Julia version: 1.8.2
- Author: melmello
- Date: 2022-12-12
=#
elves = []
open("input.txt") do file
    total_score = 0
    dict_me = Dict("X" => 1, "Y" => 2, "Z" => 3)
    dict_enemy = Dict("A" => 1, "B" => 2, "C" => 3)
    for ln in eachline(file)
        play = split(ln, " ")
        res = dict_enemy[play[1]] / dict_me[play[2]]
        total_score += dict_me[play[2]]
        if res == 1
            total_score += 3
        end
        if res == 1 / 2
            total_score += 6
        end
        if res == 1 / 3
            total_score += 0
        end
        if res == 2
            total_score += 0
        end
        if res == 2 / 3
            total_score += 6
        end
        if res == 3
            total_score += 6
        end
        if res == 3 / 2
            total_score += 0
        end
    end
    println(total_score)
end