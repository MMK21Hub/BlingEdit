scoreboard players add @s particles 1
execute if score @s particles matches 1 run scoreboard players set Global draw_interval 10
execute if score @s particles matches 2 run scoreboard players set Global draw_interval 10
execute if score @s particles matches 3 run scoreboard players set Global draw_interval 16
execute if score @s particles matches 4 run scoreboard players set Global draw_interval 8
execute if score @s particles matches 5 run scoreboard players set Global draw_interval 10
execute if score @s particles matches 6 run scoreboard players set Global draw_interval 16
execute if score @s particles matches 7 run scoreboard players set Global draw_interval 4
execute if score @s particles matches 8 run scoreboard players set Global draw_interval 4
execute if score @s particles matches 9 run scoreboard players set Global draw_interval 2
scoreboard players set @s grid_display 0
function blingedit:options_2