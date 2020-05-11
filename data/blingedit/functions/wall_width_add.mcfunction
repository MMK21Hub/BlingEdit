execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players add @s width 1
scoreboard players add @s wall_width 1000
execute if score @s wall_mode matches 1.. run function blingedit:wall_limit_check
function blingedit:clear
function blingedit:fill_text
gamerule sendCommandFeedback false