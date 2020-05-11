execute if score @s state matches 9..9 run function blingedit:execute202_ln1632
execute if score @s state matches 11 as @s run function blingedit:perform_clone
execute if score @s state matches 12 if score @s brush_mode matches 1 unless score @s rand_replace matches 1 run function blingedit:execute069_ln545
execute if score @s state matches 12 if score @s brush_mode matches 1 if score @s rand_replace matches 1 run function blingedit:perform_random_replace
execute if score @s state matches 12 unless score @s brush_mode matches 1 unless score @s rand_replace matches 1 run scoreboard players set @s state 3
execute if score @s state matches 12 unless score @s brush_mode matches 1 if score @s rand_replace matches 1 run scoreboard players set @s state 10
execute if score @s state matches 3 run function blingedit:arrows_edit