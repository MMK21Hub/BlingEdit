execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
function blingedit:clear
execute if score @s state matches 10 run scoreboard players set @s state 3
execute unless score @s state matches 3..4 run function blingedit:error
execute if score @s state matches 3..4 run function blingedit:execute053_ln515
function blingedit:randomize_menu
gamerule sendCommandFeedback false