scoreboard objectives add Meta dummy

function math:check-optional_dependency

execute unless score #math$setup Meta matches 1 run function math:setup

execute if score #math$setup Meta matches 1 run function math:initial
