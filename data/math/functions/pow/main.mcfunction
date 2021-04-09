scoreboard players operation #result pow = #base pow

execute if score #base pow matches -2147483648..2147483647 unless score #base pow matches 0 if score #exponent pow matches 0 run scoreboard players set #result pow 1
execute if score #exponent pow matches ..-1 run scoreboard players set #result pow 0

execute if score #exponent pow matches 2.. run function math:pow/loop

execute store result storage math:pow result int 1 run scoreboard players get #result pow

scoreboard players set #base pow 1
scoreboard players set #exponent pow 1
