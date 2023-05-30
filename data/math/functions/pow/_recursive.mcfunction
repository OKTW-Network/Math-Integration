scoreboard players operation #pow.result math *= #pow.base math
scoreboard players remove #pow._recursiveTimes math 1
execute if score #pow._recursiveTimes math matches 1.. run function math:pow/_recursive
