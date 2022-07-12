execute if score #random.precision math matches ..0 run scoreboard players set #random.precision math 1
execute if score #random.precision math matches 10.. run scoreboard players set #random.precision math 9
scoreboard players set #pow.base math 10
scoreboard players operation #pow.exponent math = #random.precision math
function math:pow/main
scoreboard players operation #random.precision math = #pow.result math

summon minecraft:marker ~ ~ ~ {Tags:["math.dummy.UUIDGenerator"]}
execute store result score #random.result math run data get entity @e[tag=math.dummy.UUIDGenerator,limit=1] UUID[0]
kill @e[tag=math.dummy.UUIDGenerator]
execute if score #random.result math matches ..-1 run scoreboard players set #random.isNegative math 1
scoreboard players operation #random.result math %= #random.precision math
execute if score #random.allowNegative math matches 1 if score #random.isNegative math matches 1 run scoreboard players operation #random.result math *= #-1 num
