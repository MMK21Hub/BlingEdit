team join moving
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global mai_scratch1 = @s _id
scoreboard players operation @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] moving = Global mai_scratch1
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] unless score @s shift matches 1 run scoreboard players set @s state 4
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] if score @s brush_mode matches 1 run scoreboard players set @s state 12
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] if score @s shift matches 1 run scoreboard players set @s state 12
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:create_click