execute if score @s sound_type matches 1.. unless score @s cursor_change matches 1 unless score @s rand_replace matches 1 run function blingedit:sound
execute if score @s state matches 10 run scoreboard players set @s state 3
execute unless score @s state matches 3..4 unless score @s state matches 12 run function blingedit:error
execute unless score @s state matches 3..4 unless score @s state matches 12 run function blingedit:randomize_menu
execute if score @s state matches 3..4 run function blingedit:execute071_ln538
execute if score @s state matches 12 run function blingedit:execute071_ln538
gamerule sendCommandFeedback false