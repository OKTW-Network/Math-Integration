summon area_effect_cloud ~ ~ ~ {Tags:["math.UUIDGenerate"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
execute store result score #result random run data get entity @e[tag=math.UUIDGenerate,limit=1] UUID[0]
kill @e[tag=math.UUIDGenerate]
execute unless score #allowNegative random matches 1 if score #result random matches ..-1 run scoreboard players operation #result random *= #-1 num
scoreboard players operation #result random %= #max random
execute store result storage math:resources random.result int 1 run scoreboard players get #result random
