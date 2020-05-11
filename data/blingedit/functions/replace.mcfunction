execute unless score @s state matches 6..7 run function blingedit:cancel
execute unless score @s state matches 6..7 run scoreboard players set @s state 6
scoreboard players set @s window 11
execute as @s[scores={language=0}] run function blingedit:interface/en/replace_1
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/replace_1
execute as @s[scores={language=2}] run function blingedit:interface/rus/replace_1
function blingedit:tell_actions
gamerule sendCommandFeedback false