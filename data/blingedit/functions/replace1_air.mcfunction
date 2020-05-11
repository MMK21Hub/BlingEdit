execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
setblock ~ ~ ~ air
function blingedit:clear
function blingedit:tell_replace2
gamerule sendCommandFeedback false