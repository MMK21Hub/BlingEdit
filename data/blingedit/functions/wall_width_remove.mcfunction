execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players remove @s[scores={width=2..}] width 1
scoreboard players remove @s[scores={wall_width=2000..}] wall_width 1000
function blingedit:clear
function blingedit:fill_text
gamerule sendCommandFeedback false