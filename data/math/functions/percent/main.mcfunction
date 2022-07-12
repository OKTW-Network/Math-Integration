execute store result score #percent.temp math run scoreboard players operation #percent.base math *= #percent.modifier math
execute store result score #percent.result math run scoreboard players operation #percent.base math /= #100 num
execute if score #percent.round math matches 1 run scoreboard players operation #percent.temp math %= #10 num
execute if score #percent.round math matches 1 if score #percent.temp math matches 5.. store result score #percent.result math run scoreboard players add #percent.base math 1
