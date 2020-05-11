execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
execute unless score @s window matches 17..18 run scoreboard players set @s window 15
scoreboard players set @s brush_mode 0
function blingedit:clear
execute if score @s rand_replace matches 1 run function blingedit:replace_random
function blingedit:randomize_menu