execute store result score #addition._num math run data get storage math:io addition.input[0]
scoreboard players operation #addition.result math += #addition._num math
data remove storage math:io addition.input[0]
execute if data storage math:io addition.input[0] run function math:addition/_recursive
