execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players set @s moving_mode 1
function blingedit:clear
function blingedit:clone_text
gamerule sendCommandFeedback false