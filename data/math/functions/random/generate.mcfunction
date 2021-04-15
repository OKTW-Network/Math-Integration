summon area_effect_cloud ~ ~ ~ {Tags:["math.UUIDGenerate"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute store result score #result random run data get entity @e[tag=math.UUIDGenerate,limit=1] UUID[0]
kill @e[tag=math.UUIDGenerate]

execute if score #precision random matches ..0 run scoreboard players set #precision random 1
execute if score #precision random matches 10.. run scoreboard players set #precision random 9
scoreboard players set #base pow 10
scoreboard players operation #exponent pow = #precision random
function math:pow/main
execute store result score #precision random run data get storage math:pow result

execute if score #result random matches ..-1 run scoreboard players set #isNegative random 1
scoreboard players operation #result random %= #precision random
execute if score #allowNegative random matches 1 if score #isNegative random matches 1 run scoreboard players operation #result random *= #-1 num
execute store result storage math:random result int 1 run scoreboard players get #result random

scoreboard players set #precision random 3
scoreboard players set #allowNegative random 0
scoreboard players set #isNegative random 0
