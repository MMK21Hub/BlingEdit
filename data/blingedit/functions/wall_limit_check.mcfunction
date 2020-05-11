execute as @s[scores={wall_mode=1}] if score Global box_size_x < Global box_size_z store result score @s wall_width_max run scoreboard players get Global box_size_x
execute as @s[scores={wall_mode=1}] if score Global box_size_x >= Global box_size_z store result score @s wall_width_max run scoreboard players get Global box_size_z
execute as @s[scores={wall_mode=2}] if score Global box_size_x < Global box_size_y store result score @s wall_width_max run scoreboard players get Global box_size_x
execute as @s[scores={wall_mode=2}] if score Global box_size_x >= Global box_size_y store result score @s wall_width_max run scoreboard players get Global box_size_y
execute as @s[scores={wall_mode=3}] if score Global box_size_y < Global box_size_z store result score @s wall_width_max run scoreboard players get Global box_size_y
execute as @s[scores={wall_mode=3}] if score Global box_size_y >= Global box_size_z store result score @s wall_width_max run scoreboard players get Global box_size_z
execute store result score @s fil_scratch10 run scoreboard players get @s wall_width_max
scoreboard players operation @s fil_scratch10 %= c2 Constant
execute if score @s fil_scratch10 matches 1 run scoreboard players operation @s wall_width_max -= c1 Constant
execute if score @s fil_scratch10 matches 0 run scoreboard players operation @s wall_width_max -= c2 Constant
scoreboard players operation @s wall_width_max /= c2 Constant
scoreboard players operation @s wall_width_max *= c1000 Constant
execute if score @s wall_width > @s wall_width_max run scoreboard players operation @s wall_width = @s wall_width_max
scoreboard players operation @s width = @s wall_width
scoreboard players operation @s width /= c1000 Constant
execute unless score @s width matches 1.. run scoreboard players set @s width 1
#function blingedit:fill_text