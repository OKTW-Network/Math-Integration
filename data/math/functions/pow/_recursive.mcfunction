scoreboard players operation #pow.result math *= #pow.base math
scoreboard players remove #pow.exponent math 1

execute if score #pow.exponent math matches 2.. run function math:pow/_recursive
