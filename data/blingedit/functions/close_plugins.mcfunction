execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players set @s window 3
function blingedit:clear
function blingedit:tell_actions
gamerule sendCommandFeedback false