gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Math-integration"
datapack disable "file/Math-integration.zip"

scoreboard players set #math$fileIsZip Meta 0

execute store success score #math$fileType Meta run datapack enable "file/Math-integration" after "vanilla"
execute unless score #math$fileType Meta matches 1 store success score #math$fileIsZip Meta run datapack enable "file/Math-integration.zip" after "vanilla"

scoreboard players set #math$setup Meta 1
execute if score #math$fileType Meta matches 0 if score #math$fileIsZip Meta matches 0 run scoreboard players set #math$setup Meta -1
