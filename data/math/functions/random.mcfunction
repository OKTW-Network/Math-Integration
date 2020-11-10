scoreboard players add #max random 1
function cu:uuid/generate
execute store result score #result random run data get storage cu:uuid generate[0]
execute unless score #allowNegative random matches 1 if score #result random matches ..-1 run scoreboard players operation #result random *= #-1 num
scoreboard players operation #result random %= #max random
execute store result storage math:resources random.result int 1 run scoreboard players get #result random
