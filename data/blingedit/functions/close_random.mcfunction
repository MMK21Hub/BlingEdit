execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players set @s rand_replace 0
function blingedit:clear
execute unless score @s state matches 0 unless score @s brush_mode matches 1 run scoreboard players set @s state 3
scoreboard players set @s window 15
function blingedit:randomize_menu
gamerule sendCommandFeedback false