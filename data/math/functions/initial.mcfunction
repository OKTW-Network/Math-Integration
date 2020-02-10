function math:meta/scoreboard/register
function math:config
function math:check-version

# execute as @a[tag=!InitializedMathScore] run function math:meta/scoreboard/set_player_score

execute if score #math_print_init Config matches 1 run tellraw @a ["",{"text":"[Math Integration]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
