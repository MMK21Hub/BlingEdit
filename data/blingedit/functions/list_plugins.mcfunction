scoreboard players set @s disp_plugins 2
execute as @s[scores={language=0}] run function blingedit:interface/en/plugins_top
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/plugins_top
execute as @s[scores={language=2}] run function blingedit:interface/rus/plugins_top
scoreboard players set @s window 19
gamerule sendCommandFeedback false