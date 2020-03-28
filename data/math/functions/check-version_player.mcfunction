function math:version

scoreboard players operation #new_x.*.*-* Version = #math_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #math_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #math_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #math_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionX
scoreboard players operation #currently_*.x.*-* Version = @s VersionY
scoreboard players operation #currently_*.*.x-* Version = @s VersionZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionA
function cu:version/check

execute if score #change Version matches 1 run function math:debug/remove-init_tag

scoreboard players operation @s VersionX = #math_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionY = #math_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionZ = #math_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionA = #math_currently_version_*.*.*-x Meta
