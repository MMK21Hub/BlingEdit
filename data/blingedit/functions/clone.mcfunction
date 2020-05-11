execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
scoreboard players reset @s options_page
execute if score @s state matches 8..9 run function blingedit:clone_text_before
execute if score @s state matches 11 run function blingedit:clone_text_before
execute if score @s state matches 0..7 run function blingedit:clone_check
execute if score @s state matches 10 run function blingedit:clone_check
gamerule sendCommandFeedback false