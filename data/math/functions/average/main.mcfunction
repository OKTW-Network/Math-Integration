scoreboard players reset #average.result math

execute store result score #average._count math run data get storage math:io average.input
execute if score #average._count math matches 1.. run function math:average/_calculate

data remove storage math:io average.input
scoreboard players reset #average._count math
