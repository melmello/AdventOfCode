#=
main:
- Julia version: 1.8.2
- Author: melmello
- Date: 2022-12-12
=#
elves = []
open("input.txt") do file
    total_score = 0
    dict_play = Dict("A" => 1, "B" => 2, "C" => 3)
    dict_result = Dict("X" => 0, "Y" => 3, "Z" => 6)
    dict_win = Dict("A" => "C", "B" => "A", "C" => "B")
    dict_lose = Dict("A" => "B", "B" => "C", "C" => "A")
    for ln in eachline(file)
        play = split(ln, " ")
        if play[2] == "Y"
            total_score += 3
            total_score += dict_play[play[1]]
        end
        if play[2] == "X"
            total_score += 0
            total_score += dict_play[dict_win[play[1]]]
        end
        if play[2] == "Z"
            total_score += 6
            total_score += dict_play[dict_lose[play[1]]]
        end
    end
    println(total_score)
end