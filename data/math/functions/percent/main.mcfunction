execute store result score #temp percent run scoreboard players operation #base percent *= #modifier percent
execute store result score #result percent run scoreboard players operation #base percent /= #100 num
execute if score #round percent matches 1 run scoreboard players operation #temp percent %= #10 num
execute if score #round percent matches 1 if score #temp percent matches 5.. store result score #result percent run scoreboard players add #base percent 1

scoreboard players set #round percent 0
