clone ~ ~ ~ ~ ~ ~ 0 2 0
setblock ~ ~ ~ air
execute unless block 0 2 0 minecraft:air run scoreboard players set Global air 0
execute unless score @s brush_mode matches 1 as @s run function blingedit:perform_random_replace
execute if score @s[scores={rand_replace=1}] brush_mode matches 1 run function blingedit:block_selected