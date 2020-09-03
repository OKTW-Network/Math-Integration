function cu:uuid/generate
execute store result score #result random run data get storage cu:resources UUID[0]
execute if score #result random matches ..-1 run scoreboard players operation #result random *= #-1 num
scoreboard players operation #result random %= #max random
execute store result storage math:resources random.result int 1 run scoreboard players get #result random
