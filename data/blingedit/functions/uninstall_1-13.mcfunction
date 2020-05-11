setblock 0 1 0 stone
execute store success score Global loaded run setblock 0 1 0 sandstone
execute if score Global loaded matches 1 as @s[scores={language=0}] run function blingedit:interface/en/uninstall_1-13_message
execute if score Global loaded matches 1 as @s[scores={language=1}] run function blingedit:interface/language.pack/uninstall_1-13_message
execute if score Global loaded matches 1 as @s[scores={language=2}] run function blingedit:interface/ru/uninstall_1-13_message

execute as @s[scores={language=0}] run function blingedit:interface/en/uninstall_finish_1-13
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/uninstall_finish_1-13
execute as @s[scores={language=2}] run function blingedit:interface/rus/uninstall_finish_1-13