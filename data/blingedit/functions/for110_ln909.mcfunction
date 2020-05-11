scoreboard players operation Global percent = Global dz
scoreboard players operation Global percent -= Global start_dz
scoreboard players operation Global per2_scratch2 = Global end_dz
scoreboard players operation Global per2_scratch2 -= Global start_dz
scoreboard players operation Global per2_scratch2 /= c100 Constant
scoreboard players operation Global percent /= Global per2_scratch2
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players set c3 Constant 3
scoreboard players operation Global dy = Global start_dy
scoreboard players operation Global bepch_tmp0 = Global dy
scoreboard players operation Global bepch_tmp0 /= c1000 Constant
scoreboard players operation Global bepch_tmp0 %= c2 Constant
scoreboard players operation Global bepch_tmp0 *= c1000 Constant
scoreboard players operation Global dy -= Global bepch_tmp0
scoreboard players operation Global per2_scratch2 = Global end_dy
scoreboard players operation Global per2_scratch3 = Global step_dy
execute if score Global per2_scratch3 matches ..-1 if score Global dy >= Global per2_scratch2 run function blingedit:for111_ln912
execute if score Global per2_scratch3 matches 1.. if score Global dy <= Global per2_scratch2 run function blingedit:for111_ln912
scoreboard players operation Global dz += Global per2_scratch5
execute if score Global per2_scratch5 matches ..-1 if score Global dz >= Global per2_scratch4 run function blingedit:for110_ln909
execute if score Global per2_scratch5 matches 1.. if score Global dz < Global per2_scratch4 run function blingedit:for110_ln909