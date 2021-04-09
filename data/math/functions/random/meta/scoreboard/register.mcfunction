scoreboard objectives add random dummy
execute unless score #precision random matches -2147483648..2147483647 run scoreboard players set #precision random 3
execute unless score #allowNegative random matches -2147483648..2147483647 run scoreboard players set #allowNegative random 0
