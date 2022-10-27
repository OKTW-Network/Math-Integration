scoreboard objectives add Meta dummy

execute unless score #math$setup Meta matches 1 run function math:setup

execute if score #math$setup Meta matches 1 run function math:initial
