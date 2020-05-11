function blingedit:patch_kipcode66_multi_block_clone/get_clone_delta
function blingedit:patch_kipcode66_multi_block_clone/store_clone_region
# Backup blocks where we put the structure block and the redstone block to activate it.
clone 0 1 -1 0 1 -1 0 1 6 replace
clone 0 1 -2 0 1 -2 0 1 8 replace

# Place the structure block and a stone block
setblock 0 1 -2 minecraft:stone replace
setblock 0 1 -1 minecraft:stone replace
setblock 0 1 -1 minecraft:structure_block replace
data merge block 0 1 -1 {name:"blingedit:structure/buffer/region3x3",mode:"LOAD",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:0,posY:0,posZ:1,mirror:"NONE",rotation:"NONE"}
# Set the options
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant

# Change the position where to spawn the structure according to the rotation
execute if score Global rotation matches 90..90 run scoreboard players operation Global bepch_tmp0 >< Global bepch_tmp2
execute if score Global rotation matches 90..90 run data merge block 0 1 -1 {posX:4}
execute if score Global rotation matches 180..180 run data merge block 0 1 -1 {posX:4}
execute if score Global rotation matches 180..180 run data merge block 0 1 -1 {posZ:5}
execute if score Global rotation matches 270..270 run scoreboard players operation Global bepch_tmp0 >< Global bepch_tmp2
execute if score Global rotation matches 270..270 run data merge block 0 1 -1 {posZ:5}
# And then put the rotation in the blocks
execute if score Global rotation matches 0..0 run data merge block 0 1 -1 {rotation:"NONE"}
execute if score Global rotation matches 90..90 run data merge block 0 1 -1 {rotation:"CLOCKWISE_90"}
execute if score Global rotation matches 180..180 run data merge block 0 1 -1 {rotation:"CLOCKWISE_180"}
execute if score Global rotation matches 270..270 run data merge block 0 1 -1 {rotation:"COUNTERCLOCKWISE_90"}

execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players add Global rotation 180
execute if score Global flip_x matches 1.. if score Global flip_z matches 1.. run scoreboard players operation Global rotation %= c360 Constant
# Replace the stone block with a redstone block to activate the structure block and load the cloned block
setblock 0 1 -2 minecraft:redstone_block replace

# Put back the original blocks.
clone 0 1 8 0 1 8 0 1 -2 replace
clone 0 1 6 0 1 6 0 1 -1 replace


# Backup blocks where we put the structure block and the redstone block to activate it.
clone 0 1 -1 0 1 -1 0 1 4 replace
clone 0 1 -2 0 1 -2 0 1 6 replace

execute unless score Global clone_air matches 1.. run fill 0 1 0 4 5 4 minecraft:structure_void replace minecraft:air

# Place the structure block and a stone block
setblock 0 1 -2 minecraft:stone replace
setblock 0 1 -1 minecraft:stone replace
setblock 0 1 -1 minecraft:structure_block replace
data merge block 0 1 -1 {name:"blingedit:structure/buffer/region3x3",mode:"SAVE",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:1,posY:1,posZ:2,sizeX:3,sizeY:3,sizeZ:3}
scoreboard players add Global bepch_tmp0 1
scoreboard players add Global bepch_tmp1 1
scoreboard players add Global bepch_tmp2 1
execute store result block 0 1 -1 sizeX int 1 run scoreboard players get Global bepch_tmp0
execute store result block 0 1 -1 sizeY int 1 run scoreboard players get Global bepch_tmp1
execute store result block 0 1 -1 sizeZ int 1 run scoreboard players get Global bepch_tmp2
scoreboard players remove Global bepch_tmp0 1
scoreboard players remove Global bepch_tmp1 1
scoreboard players remove Global bepch_tmp2 1
scoreboard players set Global bepch_tmp3 3
scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp0
execute if score Global rotation matches 90..90 store result block 0 1 -1 posX int 1 run scoreboard players get Global bepch_tmp3
execute if score Global rotation matches 180..180 store result block 0 1 -1 posX int 1 run scoreboard players get Global bepch_tmp3
scoreboard players set Global bepch_tmp3 4
scoreboard players operation Global bepch_tmp3 -= Global bepch_tmp2
execute if score Global rotation matches 180..180 store result block 0 1 -1 posZ int 1 run scoreboard players get Global bepch_tmp3
execute if score Global rotation matches 270..270 store result block 0 1 -1 posZ int 1 run scoreboard players get Global bepch_tmp3
# Replace the stone block with a redstone block to activate the structure block and save the cloned block
setblock 0 1 -2 minecraft:redstone_block replace
# Put back the original blocks.
clone 0 1 4 0 1 4 0 1 -1 replace
clone 0 1 6 0 1 6 0 1 -2 replace

function blingedit:patch_kipcode66_multi_block_clone/restore_clone_region

scoreboard players add Global bepch_tmp2 1
execute if score Global flip_z matches ..0 run function blingedit:patch_kipcode66_multi_block_clone/if1then_load
execute if score Global flip_z matches 1.. run function blingedit:patch_kipcode66_multi_block_clone/if1else_load
scoreboard players remove Global bepch_tmp2 1
