execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
setblock ~ ~ ~ air
function blingedit:perform_replace
gamerule sendCommandFeedback false