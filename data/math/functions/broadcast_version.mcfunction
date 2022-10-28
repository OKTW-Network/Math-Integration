data modify storage cu:version broadcast_relation.input.datapack_name set value '{"text":"Math"}'
scoreboard players operation #version.broadcast_relation.input.method cu = #math$general.print_version Config
function math:version
scoreboard players operation #version.broadcast_relation.input_1.x cu = #math$version.x Meta
scoreboard players operation #version.broadcast_relation.input_1.y cu = #math$version.y Meta
scoreboard players operation #version.broadcast_relation.input_1.z cu = #math$version.z Meta
data modify storage cu:version broadcast_relation.input_1.t set from storage meta:math version.t
scoreboard players operation #version.broadcast_relation.input_2.x cu = #math$current_version.x Meta
scoreboard players operation #version.broadcast_relation.input_2.y cu = #math$current_version.y Meta
scoreboard players operation #version.broadcast_relation.input_2.z cu = #math$current_version.z Meta
data modify storage cu:version broadcast_relation.input_2.t set from storage meta:math current_version.t
function cu:version/broadcast_relation/main
