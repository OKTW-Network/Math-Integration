scoreboard players operation #pow.result math = #pow.base math

execute if score #pow.base math matches -2147483648..2147483647 unless score #pow.base math matches 0 if score #pow.exponent math matches 0 run scoreboard players set #pow.result math 1
execute if score #pow.exponent math matches ..-1 run scoreboard players set #pow.result math 0

execute if score #pow.exponent math matches 2.. run function math:pow/_recursive

execute store result storage math:pow result int 1 run scoreboard players get #pow.result math
