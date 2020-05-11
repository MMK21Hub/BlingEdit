execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 run function blingedit:sound
execute if score @s always_clone matches 0 unless score @s state matches 8 run function blingedit:confirm_clone_text
execute if score @s always_clone matches 1 unless score @s state matches 8 run scoreboard players set @s state 8
execute if score @s state matches 8 run function blingedit:execute092_ln740
gamerule sendCommandFeedback false