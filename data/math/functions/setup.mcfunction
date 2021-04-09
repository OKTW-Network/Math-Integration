gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Math-integration"
datapack enable "file/Math-integration" after "vanilla"

scoreboard players set #math$setup Meta 1
