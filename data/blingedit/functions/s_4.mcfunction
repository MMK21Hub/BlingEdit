execute if score @s window matches 1 run scoreboard players set @s window 2
execute if score @s window matches 3 run scoreboard players set @s window 4
function blingedit:clear
function blingedit:cursor_settings
tellraw @s ""
execute as @s[scores={window=2,language=0}] run function blingedit:interface/en/1st_2
execute as @s[scores={window=2,language=1}] run function blingedit:interface/language.pack/1st_2
execute as @s[scores={window=2,language=2}] run function blingedit:interface/rus/1st_2
tellraw @s[scores={window=2}] ["\n"]
function blingedit:tell_actions