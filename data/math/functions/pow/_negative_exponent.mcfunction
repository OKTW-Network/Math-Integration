scoreboard players operation #pow.precision math > #1 num
scoreboard players operation #pow.precision math < #9 num
execute if score #pow.precision math matches 1 run scoreboard players set #pow.precision math 10
execute if score #pow.precision math matches 2 run scoreboard players set #pow.precision math 100
execute if score #pow.precision math matches 3 run scoreboard players set #pow.precision math 1000
execute if score #pow.precision math matches 4 run scoreboard players set #pow.precision math 10000
execute if score #pow.precision math matches 5 run scoreboard players set #pow.precision math 100000
execute if score #pow.precision math matches 6 run scoreboard players set #pow.precision math 1000000
execute if score #pow.precision math matches 7 run scoreboard players set #pow.precision math 10000000
execute if score #pow.precision math matches 8 run scoreboard players set #pow.precision math 100000000
execute if score #pow.precision math matches 9 run scoreboard players set #pow.precision math 1000000000
execute store result score #pow.result math run scoreboard players operation #pow.precision math /= #pow.result math
