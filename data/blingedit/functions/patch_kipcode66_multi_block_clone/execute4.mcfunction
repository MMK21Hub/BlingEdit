scoreboard players operation Global bepch_tmp0 *= c1000 Constant
scoreboard players operation Global bepch_tmp1 *= c1000 Constant
scoreboard players operation Global bepch_tmp2 *= c1000 Constant
execute store result score Global bepch_tmp3 run data get entity @s Pos[0] 1000
execute if score Global step_dx matches 1.. if score Global rotation matches 0..0 run scoreboard players operation Global bepch_tmp3 += Global bepch_tmp0
execute if score Global step_dz matches 1.. if score Global rotation matches 90..90 run scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp0
execute if score Global step_dx matches 1.. if score Global rotation matches 180..180 run scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp0
execute if score Global step_dz matches 1.. if score Global rotation matches 270..270 run scoreboard players operation Global bepch_tmp3 += Global bepch_tmp0
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global bepch_tmp3
execute store result score Global bepch_tmp3 run data get entity @s Pos[1] 1000
execute if score Global step_dy matches 1.. run scoreboard players operation Global bepch_tmp3 += Global bepch_tmp1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global bepch_tmp3
execute store result score Global bepch_tmp3 run data get entity @s Pos[2] 1000
execute if score Global step_dz matches 1.. if score Global rotation matches 0..0 run scoreboard players operation Global bepch_tmp3 += Global bepch_tmp2
execute if score Global step_dx matches 1.. if score Global rotation matches 90..90 run scoreboard players operation Global bepch_tmp3 += Global bepch_tmp2
execute if score Global step_dz matches 1.. if score Global rotation matches 180..180 run scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp2
execute if score Global step_dx matches 1.. if score Global rotation matches 270..270 run scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global bepch_tmp3
scoreboard players operation Global bepch_tmp0 /= c1000 Constant
scoreboard players operation Global bepch_tmp1 /= c1000 Constant
scoreboard players operation Global bepch_tmp2 /= c1000 Constant