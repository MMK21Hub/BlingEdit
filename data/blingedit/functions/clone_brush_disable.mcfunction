execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
function blingedit:clear
scoreboard players set @s state 9
function blingedit:clone_text