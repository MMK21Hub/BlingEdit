execute unless score @s state matches 0 run scoreboard players set @s state 3
scoreboard players set @s rand_replace 0
scoreboard players set @s brush_mode 0
scoreboard players set @s window 3
function blingedit:clear
function blingedit:tell_actions
gamerule sendCommandFeedback false