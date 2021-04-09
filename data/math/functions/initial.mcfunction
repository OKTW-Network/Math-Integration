function math:check-dependency_optional

function #math:scoreboard-register
function #math:storage-register

function #math:config

function math:check_and_run-check-version

execute if score #math$print_init Config matches 1 run tellraw @a ["",{"text":"[Math Integration]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
