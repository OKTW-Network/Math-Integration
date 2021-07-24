function math:version

scoreboard players operation #new_x.*.*-* Version = #math$version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #math$version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #math$version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #math$version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #math$currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #math$currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #math$currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #math$currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently
function cu:version/build-relation

execute if score #none Version matches 1 if score #math$print_version Config matches 1..2 run tellraw @a {"translate":"%s Version: %s","color":"reset","with":[{"text":"[Math Integration]:","color":"yellow","bold":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}
execute if score #change Version matches 1 if score #math$print_version Config matches 1..2 run tellraw @a {"translate":"%s Version: %s %s %s","color":"reset","with":[{"text":"[Math Integration]:","color":"yellow","bold":true},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"nbt":"version.relation","storage":"cu:resources","interpret":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}
execute if score #change Version matches 0 if score #none Version matches 0 if score #math$print_version Config matches 2 run tellraw @a {"translate":"%s Version: %s","color":"reset","with":[{"text":"[Math Integration]:","color":"yellow","bold":true},{"nbt":"version.new","storage":"cu:resources","interpret":true}]}

scoreboard players operation #math$currently_version_x.*.*-* Meta = #math$version_x.*.*-* Meta
scoreboard players operation #math$currently_version_*.x.*-* Meta = #math$version_*.x.*-* Meta
scoreboard players operation #math$currently_version_*.*.x-* Meta = #math$version_*.*.x-* Meta
scoreboard players operation #math$currently_version_*.*.*-x Meta = #math$version_*.*.*-x Meta
