clone ~ ~ ~ ~ ~ ~ 0 2 0
function blingedit:clear
scoreboard players set @s state 7
scoreboard players set @s window 13
setblock ~ ~ ~ air
execute as @s[scores={language=0}] run function blingedit:interface/en/replace_2
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_2
execute as @s[scores={language=2}] run function blingedit:interface/rus/replace_2
function blingedit:tell_actions