execute unless score #percent.base math matches -2147483648..2147483647 run scoreboard players set #percent.base math 0
execute unless score #percent.modifier math matches -2147483648..2147483647 run scoreboard players set #percent.modifier math 100
execute unless score #percent.round math matches -2147483648..2147483647 run scoreboard players set #percent.round math 0

execute store result score #percent._roundCheck math run scoreboard players operation #percent.base math *= #percent.modifier math
execute store result score #percent.result math run scoreboard players operation #percent.base math /= #100 num
execute if score #percent.round math matches 1 run scoreboard players operation #percent._roundCheck math %= #100 num
execute if score #percent.round math matches 1 if score #percent._roundCheck math matches 50.. store result score #percent.result math run scoreboard players add #percent.base math 1

scoreboard players reset #percent.base math
scoreboard players reset #percent.modifier math
scoreboard players reset #percent.round math
scoreboard players reset #percent._roundCheck math
