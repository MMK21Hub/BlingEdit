function blingedit:clear
execute as @s[scores={language=0}] run function blingedit:interface/en/error
execute as @s[scores={language=1}] run function blingedit:interface/language.pack/error
execute as @s[scores={language=2}] run function blingedit:interface/rus/error
gamerule sendCommandFeedback false