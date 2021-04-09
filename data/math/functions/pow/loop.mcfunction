scoreboard players operation #result pow *= #base pow
scoreboard players remove #exponent pow 1

execute if score #exponent pow matches 2.. run function math:pow/loop
