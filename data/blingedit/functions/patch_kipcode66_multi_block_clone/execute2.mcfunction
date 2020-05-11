execute if score Global step_dz matches 1.. if score Global rotation matches 270..270 store result block ~ ~ ~ posX int -1 run scoreboard players get Global bepch_tmp0
execute if score Global step_dx matches 1.. if score Global rotation matches 0..0 store result block ~ ~ ~ posX int -1 run scoreboard players get Global bepch_tmp0
execute if score Global step_dz matches 1.. if score Global rotation matches 0..0 store result block ~ ~ ~ posZ int -1 run scoreboard players get Global bepch_tmp2
execute if score Global step_dx matches 1.. if score Global rotation matches 90..90 store result block ~ ~ ~ posZ int -1 run scoreboard players get Global bepch_tmp2
execute if score Global step_dy matches 1.. store result block ~ ~ ~ posY int -1 run scoreboard players get Global bepch_tmp1

execute if score Global step_dz matches ..-1 if score Global rotation matches 90..90 store result block ~ ~ ~ posX int -1 run scoreboard players get Global bepch_tmp0
execute if score Global step_dx matches ..-1 if score Global rotation matches 180..180 store result block ~ ~ ~ posX int -1 run scoreboard players get Global bepch_tmp0
execute if score Global step_dz matches ..-1 if score Global rotation matches 180..180 store result block ~ ~ ~ posZ int -1 run scoreboard players get Global bepch_tmp2
execute if score Global step_dx matches ..-1 if score Global rotation matches 270..270 store result block ~ ~ ~ posZ int -1 run scoreboard players get Global bepch_tmp2