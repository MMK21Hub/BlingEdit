# Backup blocks where we put the structure block and the redstone block to activate it.
clone 0 1 -1 0 1 -1 0 1 8 replace
clone 0 1 -2 0 1 -2 0 1 10 replace
# Place the structure block and a stone block
setblock 0 1 -2 minecraft:stone replace
setblock 0 1 -1 minecraft:stone replace
setblock 0 1 -1 minecraft:structure_block replace
data merge block 0 1 -1 {name:"blingedit:structure/buffer/region5x5",mode:"SAVE",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:0,posY:0,posZ:1,sizeX:5,sizeY:5,sizeZ:5}
# Replace the stone block with a redstone block to activate the structure block and save the cloned block
setblock 0 1 -2 minecraft:redstone_block replace
# Put back the original blocks.
clone 0 1 10 0 1 10 0 1 -2 replace
clone 0 1 8 0 1 8 0 1 -1 replace

fill 0 1 0 4 5 4 minecraft:stone replace
fill 0 1 0 4 5 4 minecraft:air replace minecraft:stone