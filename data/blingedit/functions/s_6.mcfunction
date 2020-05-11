function blingedit:clear
function blingedit:cursor_settings
tellraw @s ""
execute if score @s state matches 6 run function blingedit:replace
execute if score @s state matches 7 run function blingedit:replace_2
execute if score @s state matches 7 run function blingedit:tell_actions
scoreboard players set @s[scores={window=11}] window 12
scoreboard players set @s[scores={window=13}] window 14