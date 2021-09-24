scoreboard objectives add percent dummy
execute unless score #base percent matches -2147483648..2147483647 run scoreboard players set #base percent 0
execute unless score #modifier percent matches -2147483648..2147483647 run scoreboard players set #modifier percent 0
execute unless score #round percent matches -2147483648..2147483647 run scoreboard players set #round percent 0
execute unless score #result percent matches -2147483648..2147483647 run scoreboard players set #result percent 0
