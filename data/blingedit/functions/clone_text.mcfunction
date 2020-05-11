scoreboard players set @s window 7
scoreboard players reset @s options_page
execute unless score @s clone_air matches 0.. run scoreboard players set @s clone_air 0
execute unless score @s moving_mode matches 0.. run scoreboard players set @s moving_mode 0
execute as @s[scores={language=0}] run function blingedit:interface/en/clone
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/clone
execute as @s[scores={language=2}] run function blingedit:interface/rus/clone
function blingedit:tell_actions
gamerule sendCommandFeedback false