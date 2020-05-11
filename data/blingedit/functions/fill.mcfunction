execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players reset @s options_page
execute unless score @s state matches 5 run function blingedit:cancel
execute unless score @s wall_width matches 1000.. run scoreboard players set @s wall_width 1000
scoreboard players set Global wall_count 0
scoreboard players set @s x_available 0
scoreboard players set @s y_available 0
scoreboard players set @s z_available 0
execute if score Global box_size_y < Global box_size_z run scoreboard players operation @s fil_scratch10 = Global box_size_y
execute if score Global box_size_y >= Global box_size_z run scoreboard players operation @s fil_scratch10 = Global box_size_z
scoreboard players set @s[scores={fil_scratch10=3..}] x_available 1

execute if score Global box_size_x < Global box_size_z run scoreboard players operation @s fil_scratch10 = Global box_size_x
execute if score Global box_size_x >= Global box_size_z run scoreboard players operation @s fil_scratch10 = Global box_size_z
scoreboard players set @s[scores={fil_scratch10=3..}] y_available 1

execute if score Global box_size_x < Global box_size_y run scoreboard players operation @s fil_scratch10 = Global box_size_x
execute if score Global box_size_x >= Global box_size_y run scoreboard players operation @s fil_scratch10 = Global box_size_y
scoreboard players set @s[scores={fil_scratch10=3..}] z_available 1

scoreboard players set @s[scores={y_available=0,x_available=0,z_available=0}] output 0
scoreboard players set @s[scores={y_available=0,x_available=0,z_available=1}] output 1
scoreboard players set @s[scores={y_available=0,x_available=1,z_available=0}] output 2
scoreboard players set @s[scores={y_available=1,x_available=0,z_available=0}] output 3
scoreboard players set @s[scores={y_available=1,x_available=1,z_available=1}] output 4

function blingedit:clear
execute unless score Global has_box matches 1 run function blingedit:error
execute unless score Global has_box matches 1 run function blingedit:tell_actions
execute unless score @s state matches 1 run scoreboard players set @s state 5
execute if score @s wall_mode matches 1.. run function blingedit:wall_limit_check
execute if score Global has_box matches 1 run function blingedit:fill_text
gamerule sendCommandFeedback false