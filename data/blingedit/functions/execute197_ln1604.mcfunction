scoreboard players set Global click 0
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id if score @s type matches 2..2 if score @s highlighted matches 1.. run function blingedit:execute196_ln1606
function blingedit:arrows_clone