function #math:config

function #math:scoreboard-register

execute if score #math$dependency-cu Meta matches 1 run function math:check-version

execute if score #math$dependency-cu Meta matches 1 as @a run function math:check_player_version
