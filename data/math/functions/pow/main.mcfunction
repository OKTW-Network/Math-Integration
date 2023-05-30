scoreboard players reset #pow.result math
execute unless score #pow.base math matches -2147483648..2147483647 run scoreboard players set #pow.base math 1
execute unless score #pow.exponent math matches -2147483648..2147483647 run scoreboard players set #pow.exponent math 1

execute if score #pow.base math matches 0 run scoreboard players set #pow.exponent math 0
execute unless score #pow.base math matches 0 if score #pow.exponent math matches 0 run scoreboard players set #pow.result math 1
execute unless score #pow.base math matches 0 unless score #pow.exponent math matches 0 run scoreboard players operation #pow.result math = #pow.base math

scoreboard players operation #pow._recursiveTimes math = #pow.exponent math
execute if score #pow._recursiveTimes math matches ..-1 run scoreboard players operation #pow._recursiveTimes math *= #-1 num
scoreboard players remove #pow._recursiveTimes math 1
execute if score #pow.exponent math matches 0 run scoreboard players set #pow._recursiveTimes math 0

execute if score #pow._recursiveTimes math matches 1.. run function math:pow/_recursive

execute if score #pow.exponent math matches ..-1 run function math:pow/_negative_exponent

scoreboard players reset #pow.base math
scoreboard players reset #pow.exponent math
scoreboard players reset #pow.precision math
scoreboard players reset #pow._recursiveTimes math
