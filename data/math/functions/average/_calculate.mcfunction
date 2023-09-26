data modify storage math:io addition.input set from storage math:io average.input
function math:addition/main
scoreboard players operation #average.result math = #addition.result math
scoreboard players operation #average.result math /= #average._count math
