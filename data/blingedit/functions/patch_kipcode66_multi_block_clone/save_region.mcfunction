function blingedit:patch_kipcode66_multi_block_clone/store_clone_region
clone ~-1 ~-1 ~-1 ~3 ~3 ~3 0 1 0 replace

execute unless score Global clone_air matches 1.. run fill 0 1 0 4 5 4 minecraft:structure_void replace minecraft:air

# Store blocks at the place we will put the structure block
clone 0 1 -1 0 1 -1 0 1 6
clone 0 1 -2 0 1 -2 0 1 8

# Place the structure block and a stone block
setblock 0 1 -2 minecraft:stone replace
#setblock 0 1 -1 minecraft:stone replace
setblock 0 1 -1 minecraft:structure_block replace
data merge block 0 1 -1 {name:"blingedit:structure/buffer/region3x3",mode:"SAVE",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:0,posY:0,posZ:1,sizeX:5,sizeY:5,sizeZ:5}

# Replace the stone block with a redstone block to activate the structure block and save the cloned block
setblock 0 1 -2 minecraft:redstone_block replace
# Restore the original blocks
clone 0 1 8 0 1 8 0 1 -2
clone 0 1 6 0 1 6 0 1 -1

function blingedit:patch_kipcode66_multi_block_clone/restore_clone_region