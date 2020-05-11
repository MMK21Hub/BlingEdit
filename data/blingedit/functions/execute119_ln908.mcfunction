scoreboard players set c3 Constant 3
scoreboard players operation Global dz = Global start_dz
scoreboard players operation Global bepch_tmp0 = Global dz
scoreboard players operation Global bepch_tmp0 /= c1000 Constant
scoreboard players operation Global bepch_tmp0 %= c2 Constant
scoreboard players operation Global bepch_tmp0 *= c1000 Constant
scoreboard players operation Global dz -= Global bepch_tmp0
scoreboard players operation Global per2_scratch4 = Global end_dz
scoreboard players operation Global per2_scratch5 = Global step_dz
execute if score Global per2_scratch5 matches ..-1 if score Global dz >= Global per2_scratch4 run function blingedit:for110_ln909
execute if score Global per2_scratch5 matches 1.. if score Global dz <= Global per2_scratch4 run function blingedit:for110_ln909
kill @s