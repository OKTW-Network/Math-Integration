scoreboard players reset #addition.result math

execute if data storage math:io addition.input[0] run function math:addition/_recursive

data remove storage math:io addition.input
