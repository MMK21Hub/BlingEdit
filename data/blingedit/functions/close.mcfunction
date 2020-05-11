scoreboard players set @s window 3
function blingedit:clear
execute unless score @s state matches 0 run scoreboard players set @s state 3
execute unless score @s state matches 10 run function blingedit:tell_actions
execute if score @s state matches 10 run function blingedit:randomize_menu
gamerule sendCommandFeedback false