scoreboard objectives add pow dummy
execute unless score #base pow matches -2147483648..2147483647 run scoreboard players set #base pow 1
execute unless score #exponent pow matches -2147483648..2147483647 run scoreboard players set #exponent pow 1
