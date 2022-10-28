execute if score #math$print_version Config matches 1..2 run function math:broadcast_version

scoreboard players operation #math$previous_version.x Meta = #math$current_version.x Meta
scoreboard players operation #math$previous_version.y Meta = #math$current_version.y Meta
scoreboard players operation #math$previous_version.z Meta = #math$current_version.z Meta
data modify storage meta:math previous_version.t set from storage meta:math current_version.t
scoreboard players operation #math$current_version.x Meta = #math$version.x Meta
scoreboard players operation #math$current_version.y Meta = #math$version.y Meta
scoreboard players operation #math$current_version.z Meta = #math$version.z Meta
data modify storage meta:math current_version.t set from storage meta:math version.t
