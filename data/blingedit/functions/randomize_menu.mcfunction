execute unless score @s state matches ..1 unless score @s state matches 4 unless score @s state matches 10 unless score @s state matches 12 run scoreboard players set @s state 3
execute as @s[scores={language=0}] run function blingedit:interface/en/randomize_menu
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/randomize_menu
execute as @s[scores={language=2}] run function blingedit:interface/rus/randomize_menu
function blingedit:tell_actions
gamerule sendCommandFeedback false