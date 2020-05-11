scoreboard players set c3 Constant 3
scoreboard players operation Global dx = Global start_dx
scoreboard players operation Global bepch_tmp0 = Global dx
scoreboard players operation Global bepch_tmp0 /= c1000 Constant
scoreboard players operation Global bepch_tmp0 %= c2 Constant
scoreboard players operation Global bepch_tmp0 *= c1000 Constant
scoreboard players operation Global dx -= Global bepch_tmp0
scoreboard players operation Global per2_scratch0 = Global end_dx
scoreboard players operation Global per2_scratch1 = Global step_dx
execute if score Global per2_scratch1 matches ..-1 if score Global dx >= Global per2_scratch0 run function blingedit:for112_ln913
execute if score Global per2_scratch1 matches 1.. if score Global dx <= Global per2_scratch0 run function blingedit:for112_ln913
scoreboard players operation Global dy += Global per2_scratch3
execute if score Global per2_scratch3 matches ..-1 if score Global dy >= Global per2_scratch2 run function blingedit:for111_ln912
execute if score Global per2_scratch3 matches 1.. if score Global dy < Global per2_scratch2 run function blingedit:for111_ln912