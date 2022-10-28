scoreboard players set #check_player_version.diff math 0
execute unless score @s math.meta.version.x = #math$current_version.x Meta run scoreboard players set #check_player_version.diff math 1
execute unless score @s math.meta.version.y = #math$current_version.y Meta run scoreboard players set #check_player_version.diff math 1
execute unless score @s math.meta.version.z = #math$current_version.z Meta run scoreboard players set #check_player_version.diff math 1
execute unless data storage meta:math current_version{t:''} run scoreboard players set #check_player_version.diff math 2
execute unless data storage meta:math previous_version{t:''} run scoreboard players set #check_player_version.diff math 2

# execute if score #check_player_version.diff math matches 1 run 
# execute if score #check_player_version.diff math matches 2 run 

scoreboard players operation @s math.meta.version.x = #math$current_version.x Meta
scoreboard players operation @s math.meta.version.y = #math$current_version.y Meta
scoreboard players operation @s math.meta.version.z = #math$current_version.z Meta
