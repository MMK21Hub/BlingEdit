fill 0 1 0 4 5 4 minecraft:stone replace

# Backup blocks where we put the structure block and the redstone block to activate it.
clone 0 1 -1 0 1 -1 0 1 8 replace

# Place the structure block and a stone block
setblock 0 1 -1 minecraft:stone replace
setblock 0 1 0 minecraft:stone replace
setblock 0 1 0 minecraft:structure_block replace
data merge block 0 1 0 {name:"blingedit:structure/buffer/region5x5",mode:"LOAD",powered:0b,showair:0b,intergrity:1.0f,showboundingbox:0b,posX:0,posY:0,posZ:0,mirror:"NONE",rotation:"NONE"}
# Replace the stone block with a redstone block to activate the structure block and load the cloned block
setblock 0 1 -1 minecraft:redstone_block replace

# Put back the original blocks.
clone 0 1 8 0 1 8 0 1 -1 replace
