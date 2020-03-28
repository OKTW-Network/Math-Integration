scoreboard players operation #new_x.*.*-* Version = #math_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #math_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #math_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #math_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionMathX
scoreboard players operation #currently_*.x.*-* Version = @s VersionMathY
scoreboard players operation #currently_*.*.x-* Version = @s VersionMathZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionMathA
function cu:version/check

execute if score #change Version matches 1 run function math:debug/remove-init_tag

scoreboard players operation @s VersionMathX = #math_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionMathY = #math_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionMathZ = #math_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionMathA = #math_currently_version_*.*.*-x Meta
