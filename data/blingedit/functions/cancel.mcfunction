scoreboard players set Global handled 0
scoreboard players set Global can_cancel 0
scoreboard players set @s rand_replace 0
scoreboard players set @s wall_mode 0
scoreboard players set @s window 3
execute if score @s state matches 8..9 run scoreboard players set Global can_cancel 1
execute if score @s state matches 11 run scoreboard players set Global can_cancel 1
execute if score Global can_cancel matches 1.. run function blingedit:execute122_ln954
gamerule sendCommandFeedback false