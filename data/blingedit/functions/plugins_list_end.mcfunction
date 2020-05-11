execute as @s[scores={language=0,disp_plugins=1}] run function blingedit:interface/en/plugins_bottom
execute as @s[scores={language=1,disp_plugins=1}] run function blingedit:interface/language.pack/plugins_bottom
execute as @s[scores={language=2,disp_plugins=1}] run function blingedit:interface/rus/plugins_bottom
scoreboard players remove @s disp_plugins 1