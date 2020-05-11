team join source
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] state 3
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] moving 0
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,window=3..18}] run function blingedit:arrows_edit
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..,window=1..2}] run function blingedit:execute180_ln1573