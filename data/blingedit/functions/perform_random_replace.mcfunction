scoreboard players set @s random_replace 1
execute unless score @s state matches 12 run scoreboard players set @s state 3
execute as @s run function blingedit:fill_random
scoreboard players set @s random_replace 0