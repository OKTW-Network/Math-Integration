execute unless score #random.precision math matches -2147483648..2147483647 run scoreboard players set #random.precision math 2
execute unless score #random.allowNegative math matches -2147483648..2147483647 run scoreboard players set #random.allowNegative math 0
execute unless score #random.shift math matches -2147483648..2147483647 run scoreboard players set #random.shift math 0

scoreboard players operation #random.precision math > #1 num
scoreboard players operation #random.precision math < #9 num
scoreboard players set #pow.base math 10
scoreboard players operation #pow.exponent math = #random.precision math
function math:pow/main
scoreboard players operation #random.precision math = #pow.result math

summon minecraft:marker ~ ~ ~ {Tags:["math.dummy.randomGenerator"]}
execute store result score #random.result math run data get entity @e[tag=math.dummy.randomGenerator,limit=1] UUID[0]
kill @e[tag=math.dummy.randomGenerator]
execute if score #random.result math matches ..-1 run scoreboard players set #random._negative math 1
scoreboard players operation #random.result math %= #random.precision math
execute if score #random.shift math matches 1 run scoreboard players add #random.result math 1
execute if score #random.allowNegative math matches 1 if score #random._negative math matches 1 run scoreboard players operation #random.result math *= #-1 num

scoreboard players reset #random.precision math
scoreboard players reset #random.allowNegative math
scoreboard players reset #random.shift math
scoreboard players reset #random._negative math
