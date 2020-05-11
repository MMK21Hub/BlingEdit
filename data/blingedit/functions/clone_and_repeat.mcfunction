execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
execute unless score @s state matches 8..8 run function blingedit:confirm_clone_text
execute if score @s state matches 8..8 run function blingedit:execute096_ln768
gamerule sendCommandFeedback false