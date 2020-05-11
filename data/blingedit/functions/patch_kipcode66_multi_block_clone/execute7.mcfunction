clone ~ ~ ~2 ~ ~ ~2 0 1 6 replace
clone ~ ~ ~1 ~ ~ ~1 0 1 4 replace
setblock ~ ~ ~2 minecraft:stone replace
setblock ~ ~ ~1 minecraft:stone replace
setblock ~ ~ ~1 minecraft:structure_block replace
data merge block ~ ~ ~1 {name:"blingedit:structure/buffer/region3x3",mode:"LOAD",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:0,posY:0,posZ:-1,mirror:"NONE",rotation:"NONE"}
# Set the options
execute if score Global flip_x matches 1.. unless score Global flip_z matches 1.. run data merge block ~ ~ ~1 {mirror:"FRONT_BACK"}
execute if score Global flip_z matches 1.. unless score Global flip_x matches 1.. run data merge block ~ ~ ~1 {mirror:"LEFT_RIGHT"}

execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant

execute if score Global flip_x matches 1.. unless score Global flip_z matches 1.. positioned ~ ~ ~1 run function blingedit:patch_kipcode66_multi_block_clone/execute1
execute if score Global flip_z matches 1.. unless score Global flip_x matches 1.. positioned ~ ~ ~1 run function blingedit:patch_kipcode66_multi_block_clone/execute1
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. positioned ~ ~ ~1 run function blingedit:patch_kipcode66_multi_block_clone/execute2
execute unless score Global flip_x matches 1.. unless score Global flip_z matches 1.. positioned ~ ~ ~1 run function blingedit:patch_kipcode66_multi_block_clone/execute2

execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant
setblock ~ ~ ~2 minecraft:redstone_block replace

clone 0 1 6 0 1 6 ~ ~ ~2 replace
clone 0 1 4 0 1 4 ~ ~ ~1 replace