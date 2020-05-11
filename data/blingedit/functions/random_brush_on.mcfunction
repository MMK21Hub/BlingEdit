execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players set @s window 15
scoreboard players set @s brush_mode 1

execute unless score @s state matches 12 as @e[type=magma_cube,tag=Corner,scores={center_x=1,center_z=1},limit=1,sort=furthest] run scoreboard players set @s bottom_center 1
execute unless score @s state matches 12 run scoreboard players add Global _unique 1
execute unless score @s state matches 12 as @e[type=minecraft:magma_cube,tag=Corner,scores={type=1,bottom_center=1},limit=1,sort=furthest] unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
execute unless score @s state matches 12 run scoreboard players operation @s moving = @e[type=minecraft:magma_cube,tag=Corner,scores={type=1,bottom_center=1},limit=1,sort=furthest] _id

scoreboard players set @s state 12
function blingedit:clear
execute if score @s rand_replace matches 1 run function blingedit:replace_random
function blingedit:randomize_menu