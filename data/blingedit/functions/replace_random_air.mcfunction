setblock 0 2 0 air
scoreboard players set Global air 1
execute if score @s brush_mode matches 1 run function blingedit:block_selected
execute unless score @s brush_mode matches 1 run function blingedit:perform_random_replace
gamerule sendCommandFeedback false