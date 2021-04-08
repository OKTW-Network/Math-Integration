function math:version

scoreboard players operation #new_x.*.*-* Version = #math$currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #math$currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #math$currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #math$currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionMathX
scoreboard players operation #currently_*.x.*-* Version = @s VersionMathY
scoreboard players operation #currently_*.*.x-* Version = @s VersionMathZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionMathA
function cu:version/check

scoreboard players operation @s VersionMathX = #math$currently_version_x.*.*-* Meta
scoreboard players operation @s VersionMathY = #math$currently_version_*.x.*-* Meta
scoreboard players operation @s VersionMathZ = #math$currently_version_*.*.x-* Meta
scoreboard players operation @s VersionMathA = #math$currently_version_*.*.*-x Meta
